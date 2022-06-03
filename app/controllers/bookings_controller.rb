class BookingsController < ApplicationController
  before_action :set_dog, only: %i[new create]
  skip_before_action :verify_authenticity_token, only: %i[accept decline]

  def new
    @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save
      redirect_to dog_booking_confirmation_path(@booking.dog, @booking.id), notice: 'You just made a booking'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(approved: true)
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update(approved: false)
  end

  def confirmation
    @booking = Booking.find(params[:booking_id])
    @dog = Dog.find(params[:dog_id])
    @markers = [{ lat: @dog.geocode[0], lng: @dog.geocode[1] }]
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to my_bookings_path(@booking), status: :see_other
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end)
  end

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end
end
