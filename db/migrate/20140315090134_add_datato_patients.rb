class AddDatatoPatients < ActiveRecord::Migration
  def change

  	add_column :patients, :first_name, :string
  	add_column :patients, :last_name, :string
  	add_column :patients, :dob, :string
  	add_column :patients, :mrn, :string
  	add_column :patients, :sex, :string

  end

 end
