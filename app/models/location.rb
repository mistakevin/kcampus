class Location < ActiveRecord::Base
  attr_accessible :address, :city, :code, :contact_email, :contact_name, 
                  :contact_phone, :name, :state, :zipcode, :client_id

  validates :address, :presence => true
  validates :city, :presence => true
  validates :code, :presence => true
  validates :contact_email, :presence => true
  validates :contact_name, :presence => true
  validates :contact_phone, :presence => true
  validates :name, :presence => true
  validates :state, :presence => true
  validates :zipcode, :presence => true
  validates :client_id, :presence => true
  
  has_many :courses
  
  has_many :instructors
  
  has_many :admins
  
  has_many :events
  
end
