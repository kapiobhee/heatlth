class AddColumnToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :resturant_id, :integer
    add_column :orders, :meal_id, :integer
    add_column :orders, :sum_of_money, :integer
  end
end
