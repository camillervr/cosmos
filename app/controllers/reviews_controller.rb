class ReviewsController < ApplicationController

  def create
    @booking = Booking.find(params[:booking_id])
    @planet = @booking.planet
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    authorize @review
    if @review.save
      redirect_to planet_path(@planet)
    else
      render "planets/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
