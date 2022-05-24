class FixTypeName < ActiveRecord::Migration[7.0]
  def change
    rename_column :planets, :type, :object_type
  end
end
