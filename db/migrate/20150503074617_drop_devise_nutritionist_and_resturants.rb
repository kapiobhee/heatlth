class DropDeviseNutritionistAndResturants < ActiveRecord::Migration
  def change
    drop_table :nutritionists
    drop_table :resturants
  end
end
