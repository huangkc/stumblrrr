class CreatePointsOfInterests < ActiveRecord::Migration
  def change
    create_table :points_of_interests do |t|
    	t.string :latitude
    	t.string :longitude
    	t.string :title
      t.timestamps null: false
    end
  end
end
