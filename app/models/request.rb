class Request < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :echoform
  belongs_to :patient
  accepts_nested_attributes_for :echoform
end
