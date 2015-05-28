class AddColumnToOrderMeals < ActiveRecord::Migration
  def change
    add_column :order_meals, :order_id, :integer
    add_column :order_meals, :meal_id, :integer
    add_column :order_meals, :quantity, :integer
  end
end
