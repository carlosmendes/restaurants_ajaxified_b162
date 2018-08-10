class RestaurantsController < ApplicationController
  before_action :set_restaurant, only:  [:show, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def destroy
    # destroy the restaurant
    @restaurant.destroy
    # will render restaurants/destroy.js.erb
  end

  private

  def set_restaurant
    # find the restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
