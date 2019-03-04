class RenameRegionsColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :regions, :confirmation
  end
end
