class AddRocIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :roc_id, :string
    add_column :users, :doc_id, :integer
    add_column :users, :resturant_id , :integer
    add_column :users, :calory, :float
    add_column :users, :protein, :float
    add_column :users, :vitaminA6, :float
    add_column :users, :vitaminD7, :float
    add_column :users, :vitaminE8, :float
    add_column :users, :vitaminK, :float
    add_column :users, :vitaminC, :float
    add_column :users, :vitaminB1, :float
    add_column :users, :vitaminB2, :float
    add_column :users, :vitaminB3, :float
    add_column :users, :vitaminB6, :float
    add_column :users, :vitaminB12, :float
    add_column :users, :vitaminB9 , :float
    add_column :users, :cholic_acid, :float
    add_column :users, :bionic_acid, :float
    add_column :users, :vitaminB5, :float
    add_column :users, :calcuim, :float
    add_column :users, :phosphorus, :float
    add_column :users, :magnesium, :float
    add_column :users, :iron, :float
    add_column :users, :zinc, :float
    add_column :users, :iodine, :float
    add_column :users, :selenium, :float
    add_column :users, :fluorine, :float
  end
end
