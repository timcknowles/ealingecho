class CreateEchoforms < ActiveRecord::Migration
  def change
    create_table :echoforms do |t|
      t.string :clinical_details
      t.string :ecg_changes
      t.string :echo_type
      t.string :ward
      t.string :doctor
      t.string :consultant

      t.timestamps
    end
  end
end
