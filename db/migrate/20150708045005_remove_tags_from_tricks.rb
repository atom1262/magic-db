class RemoveTagsFromTricks < ActiveRecord::Migration
  def change
    remove_column :tricks, :tags, :string
  end
end
