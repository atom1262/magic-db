class AddTypeColumnToTrick < ActiveRecord::Migration
  def change
    add_column :tricks, :type, :string, null: false
  end
end
