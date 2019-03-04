class AddLengthIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :length_id, :integer
  end
end
