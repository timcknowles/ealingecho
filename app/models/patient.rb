class Patient < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :mrn, :dob, :sex, :echoforms_attributes
  	
  validates_format_of :mrn, :with => /\A[E]{1}[0-9]{8}\z/, :message => "not a valid E number"
  

  has_many :requests
  has_many :echoforms, through: :requests
  accepts_nested_attributes_for :echoforms
  accepts_nested_attributes_for :requests
  
end
