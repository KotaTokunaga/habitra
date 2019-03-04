class AddCityToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :city, :string
  end
end
