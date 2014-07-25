class CreateTricks < ActiveRecord::Migration
  def change
    create_table :tricks do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :youtube_url, null: false
      t.integer :upvotes_count, default: 0
      t.integer :downvotes_count, default: 0
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
  end
end
