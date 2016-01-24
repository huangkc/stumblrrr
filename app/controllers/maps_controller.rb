class MapsController < ApplicationController
	def index
    p params
		@my_location = MyLocation.new({lat: params["lat"], long: params["long"]})

		@points_of_interest = []
		@destination = Destination.new({latitude: params[:latitude], longitude: params[:longitude]})
    content = 'http://data.sfgov.org/resource/bm46-8iwk.json'

	end

end

