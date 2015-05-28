class CreateOrderMeals < ActiveRecord::Migration
  def change
    create_table :order_meals do |t|

      t.timestamps null: false
    end
  end
end
