class AddLanguageToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :japanese, :text
    add_column :tweets, :english, :text
    add_column :tweets, :local, :text
  end
end
