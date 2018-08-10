class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    # only answers to html requests
    # if @review.save
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render 'restaurants/show'
    # end

    if @review.save
      respond_to do |format| # like case
        # only executes one format by request
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js  # <-- idem  { render 'reviews/...'...
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
