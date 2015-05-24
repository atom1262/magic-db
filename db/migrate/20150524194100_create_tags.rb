class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :keywords
      t.belongs_to :trick, index: true

      t.timestamps
    end
  end
end
