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
    # ratings
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  # def ratings
  #   ratings = []
  #   @planet.bookings.each do |booking|
  #     booking.reviews.each do |review|
  #      review.content
  #      ratings << review.rating
  #     end
  #   end
  #   ratings_average = ratings.inject{ |sum, n| sum + n }.to_f / ratings.size
  # end
end
