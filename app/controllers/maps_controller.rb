
require 'net/http'

class MapsController < ApplicationController
  def index
    @my_location = MyLocation.new({lat: params["lat"], long: params["long"]})

    @points_of_interest = PointsOfInterest.all
    @destination = Destination.new({latitude: params[:latitude], longitude: params[:longitude]})

    @address = params[:search] ||= 'Paris'

  end


  # def create

  #   @newaddress = params[:address]
  #   redirect_to maps_path, :locals => {:address => @newaddress}
  #   # render :template => 'maps/index', :locals => {:address => @newaddress}

  # end


end