class CreateVote < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_value
      t.references :users
      t.references :stories
      t.timestamps
    end
  end
end
