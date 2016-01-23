class CreateMyLocations < ActiveRecord::Migration
  def change
    create_table :my_locations do |t|

      t.timestamps null: false
    end
  end
end
