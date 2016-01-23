class Intermediate < ActiveRecord::Base
	attr_accessor :latitude, :longitude, :title

	def initialize(options={})
		@latitude = options["latitude"]
		@longitude = options["longitude"]
		@title = options["title"]

	end

	
end
