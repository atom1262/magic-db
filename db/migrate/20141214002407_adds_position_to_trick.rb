class AddsPositionToTrick < ActiveRecord::Migration
  def change
    add_column :tricks, :position, :integer, null: false
  end
end
