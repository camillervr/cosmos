class ReviewsController < ApplicationController

  def create
    @booking = Booking.find(params[:booking_id])
    @planet = @booking.planet
    @review = Review.new(review_params)
    authorize @review
    @review.save
    redirect_to planet_path(@planet)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
