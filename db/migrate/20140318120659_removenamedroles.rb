class Removenamedroles < ActiveRecord::Migration
  def change
  remove_column :roles, :ultrasonographer, :string
  remove_column :roles, :junior_doctor, :string
  remove_column :roles, :consultant, :string
  remove_column :roles, :admin, :string
  add_column :roles, :name, :string
  end
end
