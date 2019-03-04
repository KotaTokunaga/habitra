class AddCountryToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :country, :string

  end
end
