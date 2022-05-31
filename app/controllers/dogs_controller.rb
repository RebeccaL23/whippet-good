class DogsController < ApplicationController

  def new
    @dog = Dog.new
  end

  def index
    @dogs = Dog.all
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dog_path(@dog.id), notice: 'You just added a dog'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :location, :description, :photo_url, :rate)
  end
end
