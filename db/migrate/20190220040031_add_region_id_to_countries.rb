class AddRegionIdToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :region_id, :integer
  end
end
