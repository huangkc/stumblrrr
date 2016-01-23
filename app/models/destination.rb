class Destination < ActiveRecord::Base
	attr_accessor :latitude, :longitude, :title

	def initialize(options={})
		@lat = options["latitude"]
		@long = options["longitude"]
		@title = options["title"]

	end

end
