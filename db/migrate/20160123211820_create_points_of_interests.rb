class CreatePointsOfInterests < ActiveRecord::Migration
  def change
    create_table :points_of_interests do |t|
    	t.string :lat
    	t.string :long
    	t.string :title
      t.string :location_description
      t.string :medium
      t.string :source
      t.timestamps null: false
    end
  end
end
