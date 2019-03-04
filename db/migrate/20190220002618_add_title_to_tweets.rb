class AddTitleToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :tweet_title, :string
  end
end
