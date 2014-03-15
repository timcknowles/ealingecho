class AddIDstorequests < ActiveRecord::Migration
  def change

  	add_column :requests, :patient_id, :integer
  	add_column :requests, :echoform_id, :integer
  	add_column :requests, :request_date, :datetime

  end
end
