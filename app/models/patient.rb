class Patient < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :requests
  has_many :Users, through: :appointments
end
