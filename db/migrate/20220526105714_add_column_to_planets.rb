class AddColumnToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :discovered_by, :string
  end
end
