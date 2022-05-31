class BookingsController < ApplicationController
  before_action :set_dog, only: %i[new create destroy]

  def new
    @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save
      redirect_to my_bookings_path, notice: 'You just made a booking'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to my_bookings_path(@booking), status: :see_other
  end

  def my_bookings
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end)
  end

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end
end
