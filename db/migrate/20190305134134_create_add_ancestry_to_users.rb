class CreateAddAncestryToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :add_ancestry_to_users do |t|

      t.timestamps
    end
  end
end
