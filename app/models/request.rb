class Request < ActiveRecord::Base
  attr_accessible :priority, :approved

  belongs_to :echoform
  belongs_to :patient
  accepts_nested_attributes_for :echoform
  has_many :assignments
  has_many :users, through: :assignments
end
