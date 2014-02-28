class CreateStory < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :url
      t.string :title
      t.references :users
      t.timestamps
    end
  end
end
