class FixNutritionistColumnName < ActiveRecord::Migration
  def change
    rename_column :user2s,:hostpital_name,:hospital_name
    rename_column :user2s,:hostpital_address,:hospital_address
  end
end
