class AddColumnToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :resturant_id , :integer
    add_column :meals, :calory, :float
    add_column :meals, :protein, :float
    add_column :meals, :vitaminA6, :float
    add_column :meals, :vitaminD7, :float
    add_column :meals, :vitaminE8, :float
    add_column :meals, :vitaminK, :float
    add_column :meals, :vitaminC, :float
    add_column :meals, :vitaminB1, :float
    add_column :meals, :vitaminB2, :float
    add_column :meals, :vitaminB3, :float
    add_column :meals, :vitaminB6, :float
    add_column :meals, :vitaminB12, :float
    add_column :meals, :vitaminB9 , :float
    add_column :meals, :cholic_acid, :float
    add_column :meals, :bionic_acid, :float
    add_column :meals, :vitaminB5, :float
    add_column :meals, :calcuim, :float
    add_column :meals, :phosphorus, :float
    add_column :meals, :magnesium, :float
    add_column :meals, :iron, :float
    add_column :meals, :zinc, :float
    add_column :meals, :iodine, :float
    add_column :meals, :selenium, :float
    add_column :meals, :fluorine, :float
  end
end
