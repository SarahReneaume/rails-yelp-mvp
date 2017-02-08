class ReviewsController < ApplicationController
  before_action :set_restaurant, only:[:new, :create]

  def new
    #set_restaurant
    @review = Review.new
  end

  def create
    #set_restaurant
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurants_path
  end

private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end

