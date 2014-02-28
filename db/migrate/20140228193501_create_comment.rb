class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_message
      t.references :users
      t.references :stories
      t.timestamps
    end
  end
end
