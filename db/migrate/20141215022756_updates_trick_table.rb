class UpdatesTrickTable < ActiveRecord::Migration
  def change
    change_column :tricks, :position, :integer, null: true
  end
end
