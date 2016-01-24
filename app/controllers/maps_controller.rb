
require 'net/http'

class MapsController < ApplicationController
  def index
    @my_location = MyLocation.new({lat: params["lat"], long: params["long"]})

    @points_of_interest = PointsOfInterest.all[1..30]

    @destination = Destination.new({latitude: params[:latitude], longitude: params[:longitude]})

    @address = params[:search] ||= 'Paris'



url = URI.parse('http://maps.google.com/maps/api/geocode/json?address=' + @address + '&sensor=false')
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}

 puts res.body




  end

end