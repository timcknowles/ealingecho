class AddPriorityandApprovedtoRequests < ActiveRecord::Migration
  def change

  	add_column :requests, :priority, :integer
  	add_column :requests, :approved, :boolean
  	

  end
end
