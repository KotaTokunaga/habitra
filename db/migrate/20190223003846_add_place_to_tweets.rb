class AddPlaceToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :place, :string
  end
end
