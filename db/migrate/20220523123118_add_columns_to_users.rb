class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :spirit_animal, :string
    add_column :users, :astro_sign, :string
  end
end
