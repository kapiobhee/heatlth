class AddColumnToDoctorPatient < ActiveRecord::Migration
  def change
    add_column :doctor_patients, :doctor_id, :integer
    add_column :doctor_patients, :user_id, :integer
    add_column :doctor_patients, :advise, :text
  end
end
