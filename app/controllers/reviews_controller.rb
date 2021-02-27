class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy]

  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail

    if @review.save
      flash[:alert] = 'Thank you! 😊'
      redirect_to cocktail_path(@cocktail)
    else
      flash[:alert] = 'Something went wrong 😅 Try again! 😉'
      redirect_to cocktail_path(@cocktail)
    end
  end

  def destroy
    # set_review
    @review.destroy
    redirect_to cocktail_path(@review.cocktail)
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :content, :cocktail_id)
  end
end
