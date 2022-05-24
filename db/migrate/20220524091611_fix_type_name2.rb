class FixTypeName2 < ActiveRecord::Migration[7.0]
  def change
    rename_column :planets, :object_type, :object
  end
end
