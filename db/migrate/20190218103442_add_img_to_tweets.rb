class AddImgToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :img, :string
  end
end
