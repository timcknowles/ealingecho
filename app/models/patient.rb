class Patient < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :mrn, :dob, :sex, :echoforms_attributes
  	
  	
  

  has_many :requests
  has_many :echoforms, through: :requests
  accepts_nested_attributes_for :echoforms
  accepts_nested_attributes_for :requests
  
end
