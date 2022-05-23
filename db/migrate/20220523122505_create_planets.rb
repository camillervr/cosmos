class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :type
      t.float :temperature
      t.integer :orbital_period
      t.integer :radius
      t.string :around_planet
      t.string :moons
      t.integer :surface_area
      t.integer :price_per_day
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
