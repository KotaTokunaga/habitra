class RenameRegionsColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :confirmation, :string
  end
end
