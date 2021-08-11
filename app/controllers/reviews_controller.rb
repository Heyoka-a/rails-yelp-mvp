class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.new

  end

   def create

    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end


   private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
