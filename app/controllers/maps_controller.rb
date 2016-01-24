require 'net/http'

class MapsController < ApplicationController
	def index
		@my_location = MyLocation.new({lat: params["lat"], long: params["long"]})

		@points_of_interest = []
		@destination = Destination.new({latitude: params[:latitude], longitude: params[:longitude]})

    url = URI.parse('http://data.sfgov.org/resource/bm46-8iwk.json')
    req = Net::HTTP::Get.new(url.to_s)
    @res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req)
    }

    @lol = JSON.parse(@res.body)

    @lal = JSON.parse(@lol[1]['geometry'])

    p '-------------------------------------'

    p @lal['coordinates']
	end

end

