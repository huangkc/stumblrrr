class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
    	t.string :lat
      t.string :long
      t.string :title
      t.string :location_description
      t.string :medium
      t.string :source
      t.string :artist
      t.timestamps null: false
    end
  end
end
