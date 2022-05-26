class RemoveForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_column(:reviews, :planet_id)
  end
end
