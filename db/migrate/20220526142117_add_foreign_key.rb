class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_reference(:reviews, :booking, index: true)
  end
end
