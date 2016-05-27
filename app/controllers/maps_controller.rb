require 'json'
require 'net/http'

class MapsController < ApplicationController
  def index
    @my_location = MyLocation.new({lat: params["lat"], long: params["long"]})

    @points_of_interest = PointsOfInterest.all[1..30]

    @destination = Destination.new({latitude: params[:latitude], longitude: params[:longitude]})

    @address = params[:search] ||= 'San Francisco'

    # response = HTTParty.get('https://maps.google.com/maps/api/geocode/json?address=' + @address.gsub(" ", "_") + '&sensor=false&key=' + ENV["GOOGLE_SERVER_KEY"])

    response = HTTParty.get("http://query.yahooapis.com/v1/public/yql?q=SELECT%20*%20FROM%20geo.places%20WHERE%20text=%22" + @address.gsub(" ", "") + "%22%20and%20placeTypeName=%22Town%22")


# url = URI.parse('http://maps.google.com/maps/api/geocode/json?address=' + @address + '&sensor=false')
# req = Net::HTTP::Get.new(url.to_s)
# res = Net::HTTP.start(url.host, url.port) {|http|
#   http.request(req)
# }

#  puts res.body


    response = Hash.from_xml(response.body)
    @latitude = response["query"]["results"]["place"]["centroid"]["latitude"] || 1
    @longitude = response["query"]["results"]["place"]["centroid"]["longitude"] || 2

  end

  def about
    
  end

  def contact
  end
end