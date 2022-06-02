class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    @review = Review.new(review_params)
    @dog = Dog.find(params[:dog_id])
    @review.user = current_user
    @review.dog = @dog

    if @review.save
      redirect_to dog_path(@dog), notice: 'You just made a review'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
