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
    @dog.save
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :location, :description, :photo_url, :rate)
  end
end
