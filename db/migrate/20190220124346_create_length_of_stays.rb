class CreateLengthOfStays < ActiveRecord::Migration[5.2]
  def change
    create_table :length_of_stays do |t|

      t.timestamps
    end
  end
end
