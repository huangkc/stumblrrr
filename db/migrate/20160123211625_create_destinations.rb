class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
    	t.string :latitude
    	t.string :longitude
    	t.string :title

      t.timestamps null: false
    end
  end
end
