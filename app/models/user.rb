class User < ActiveRecord::Base
  attr_accessible :admin, :email, :password
  attr_reader :password

  validates :password_digest, :presence => { :message => "Password can't be blank" }
  validates :password, :length => { :minimum => 6, :allow_nil => true }
  validates :session_token, :presence => true
  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :email, :format => /^.*@austincc.edu$/i

  after_initialize :ensure_session_token
  before_save :downcase_email

  def self.find_by_credentials(email, password)
  	user = User.find_by_email(email)
  	return nil if user.nil?

  	user.is_password?(password) ? user : nil
  end

  def self.generate_session_token
  	SecureRandom::urlsafe_base64(16)
  end

  def is_password?(password)
  	BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
  	@password = password
  	self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
  	self.session_token = self.class.generate_session_token
  	self.save!
  end

  private
  def ensure_session_token 
  	self.session_token ||= self.class.generate_session_token
  end
  
  def downcase_email
    self.email = self.email.downcase
  end
end