class AddDiscoveryDate < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :discovery_date, :string
  end
end
