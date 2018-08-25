class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.integer :reward
      t.integer :count
      t.string :wishing
      t.float :latitude
      t.float :longitude
      t.boolean :status, default: false
      t.timestamps
    end
  end
end
