class ChangeTrickColumnName < ActiveRecord::Migration
  def change
    rename_column :tricks, :type, :purpose
  end
end
