class AddColumnsToUser3 < ActiveRecord::Migration
  def change
    add_column :user3s, :resturant_name, :string
    add_column :user3s, :resturant_address ,:string
  end
end
