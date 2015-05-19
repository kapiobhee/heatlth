class AddUsernameToDoctorPatient < ActiveRecord::Migration
  def change
    add_column :doctor_patients, :user_name, :string
  end
end
