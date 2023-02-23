class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurants = Restaurant.find(params[:id])
    @review = Review.new
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(restaurants_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end
end
