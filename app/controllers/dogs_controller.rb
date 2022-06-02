class DogsController < ApplicationController
  before_action :set_dog, only: %i[destroy edit show update]

  def new
    @dog = Dog.new
  end

  def index
    if params[:query].present?
      @results = Dog.search_by_location_breed_and_user(params[:query])
      @dogs = []
      @results.each do |result|
        @dogs << result
      end
      if @dogs.nil?
        @dogs = Dog.all
      end
    else
      @dogs = Dog.all
      # Dog.order(created_at: :desc)
    end
  end

  def show
    @booking = Booking.new
    @markers = [{ lat: @dog.geocode[0], lng: @dog.geocode[1] }]
    @dog.photo_url
  end

  def create
    @dog = Dog.create(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dog_path(@dog.id), notice: 'You just added a dog'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @dog.update(dog_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path, status: :see_other
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :location, :description, :photo_url, :rate)
  end

end
