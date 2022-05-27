class AddRatingToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :rating, :float
  end
end
