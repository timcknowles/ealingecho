class Echoform < ActiveRecord::Base
  attr_accessible :clinical_details, :consultant, :doctor, :ecg_changes, :echo_type, :ward, :patient_ids, :patients_attributes
  	

  has_many :requests
  has_many :patients, through: :requests

  accepts_nested_attributes_for :patients
  accepts_nested_attributes_for :requests
end
