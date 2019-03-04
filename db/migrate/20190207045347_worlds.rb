class Worlds < ActiveRecord::Migration[5.2]
  def change
    drop_table :worlds
    drop_table :create_continents
    drop_table :add_ancestry_to_users
  end
end
