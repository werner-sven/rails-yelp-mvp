class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save

      if @review.save
        redirect_to restaurant_path(@review.restaurant)
      else
        render :new
      end
  end

def review_params
    params.require(:review).permit(:content, :rating)
  end

end
