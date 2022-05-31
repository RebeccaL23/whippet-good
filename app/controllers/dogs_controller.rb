class DogsController < ApplicationController
  before_action :set_dog, only: %i[destroy edit show update]

  def new
    @dog = Dog.new
  end

  def index
    @dogs = Dog.all
  end

  def show
<<<<<<< HEAD
    @booking = Booking.new
=======
>>>>>>> 779d2d81ccb56935fbd31cb73c3ef7fd9f3c40cb
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
