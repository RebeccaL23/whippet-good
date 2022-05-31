class DogsController < ApplicationController

  def new
    @dog = Dog.new
  end
end
