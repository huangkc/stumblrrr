class MyLocation < ActiveRecord::Base
	attr_accessor :lat, :long	

	def initialize(options={})
		@lat = options[:lat]
		@long = options[:long]
	end

end
