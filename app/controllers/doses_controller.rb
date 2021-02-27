class DosesController < ApplicationController
  before_action :set_dose, only: [:destroy]

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail

    if @dose.save
      flash[:alert] = 'Thank you! 😊'
      redirect_to cocktail_path(@cocktail)
    else
      flash[:alert] = 'Something went wrong 😅 Try again! 😉'
      redirect_to cocktail_path(@cocktail)
    end
  end

  def destroy
    # set_dose
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
