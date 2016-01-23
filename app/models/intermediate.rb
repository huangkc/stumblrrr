class Intermediate < ActiveRecord::Base
	attr_accessor :lat, :long, :title

	def initialize(options={})
		@lat = options["lat"]
		@long = options["long"]
		@title = options["title"]

	end

	
end
