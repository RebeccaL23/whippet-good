class DogsController < ApplicationController
  before_action :set_dog, only: ["show"]

  def new
    @dog = Dog.new
  end

  def index
    @dogs = Dog.all
  end

  def show

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

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :location, :description, :photo_url, :rate)
  end
end
