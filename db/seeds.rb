# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'net/http'

url = URI.parse('http://data.sfgov.org/resource/bm46-8iwk.json')
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port) {|http|
http.request(req)
}

JSON.parse(res.body).each do |point|

  unless point["geometry"] == "geometry"
  artist = point["artist"]
  title = point["title"]
  location_description = point["location_description"]
  medium = point["medium"]
  source = point["source"]
  lat = JSON.parse(point["geometry"])["coordinates"][1]
  long = JSON.parse(point["geometry"])["coordinates"][0]

  PointsOfInterest.create(lat: lat, long: long, artist: artist, title: title, medium: medium, source: source)
  end

  puts "Adding to database item"

end
# p JSON.parse(res.body)

# JSON.parse(JSON.parse(res.body)[0]["geometry"])["coordinates"][1]


