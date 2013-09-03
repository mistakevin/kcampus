class Term < ActiveRecord::Base
  attr_accessible :add_drop_end, :end, :number, :reg_end, :reg_start, 
                  :semester, :start, :year, :code
                  
  has_many :courses
  
  def dept_code
    "#{self.semester[0]}#{self.year.to_s[-2..-1]}#{self.number}"
  end
end
