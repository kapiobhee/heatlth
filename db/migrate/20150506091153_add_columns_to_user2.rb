class AddColumnsToUser2 < ActiveRecord::Migration
  def change
    add_column :user2s, :name, :string
    add_column :user2s, :hostpital_name, :string
    add_column :user2s, :hostpital_address, :string
  end
end
