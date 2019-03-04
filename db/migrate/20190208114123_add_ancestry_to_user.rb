class AddAncestryToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ancestry, :string
    add_index :users, :ancestry
  end

  def down
    remove_index :users, :ancestry
    remove_column :users, :ancestry
  end

end
