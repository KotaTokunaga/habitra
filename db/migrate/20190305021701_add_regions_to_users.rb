class AddRegionsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :regions, :string
  end
end
