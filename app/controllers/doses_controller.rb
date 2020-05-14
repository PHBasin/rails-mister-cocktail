class DosesController < ApplicationController
  def new
    @dose = dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @ingredient = Ingredient.find(params[:ingredient_id])
    @dose.ingredient = @ingredient
    @dose.save
    # if @review.save
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render :new
    # end
  end

  def destroy
    @dose.destroy
    # redirect_to tasks_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
