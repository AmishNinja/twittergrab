class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content
      t.integer :tweet_id
      t.string :twitter_name

      t.timestamps
    end
  end
end
