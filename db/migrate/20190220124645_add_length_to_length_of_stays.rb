class AddLengthToLengthOfStays < ActiveRecord::Migration[5.2]
  def change
    add_column :length_of_stays, :length, :string
  end
end
