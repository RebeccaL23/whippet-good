class BookingsController < ApplicationController

  def new
    @dog = Dog.find(params[:dog_id])
    @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
    @dog = Dog.find(params[:dog_id])
    @booking.dog = @dog
    @booking.user = current_user
    @booking.save
    raise
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end)
  end
end
