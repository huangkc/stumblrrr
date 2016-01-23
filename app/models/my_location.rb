class MyLocation < ActiveRecord::Base
	attr_accessor :latitude, :longitude	

	def initialize(options={})
		@latitude = options["latitude"]
		@longitude = options["longitude"]
	end

end
