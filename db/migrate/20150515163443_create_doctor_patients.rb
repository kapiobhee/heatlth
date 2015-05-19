class CreateDoctorPatients < ActiveRecord::Migration
  def change
    create_table :doctor_patients do |t|

      t.timestamps null: false
    end
  end
end
