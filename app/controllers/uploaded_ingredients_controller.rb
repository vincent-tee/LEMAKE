class UploadedIngredientsController < ApplicationController
  before_action :set_meal, only: [:index, :create]

  def index
    @uploaded_ingredients = @meal.uploaded_ingredients
    @uploaded_ingredient = UploadedIngredient.new
  end

  def create
    @uploaded_ingredient = UploadedIngredient.new(name: ingredient_params[:name].downcase, meal: @meal)
    if @uploaded_ingredient.save
      respond_to do |format|
        format.html { redirect_to uploaded_ingredient_path(@meal) }
        format.text { render partial: "uploaded_ingredients/uploaded_ingredient", locals: { uploaded_ingredient: @uploaded_ingredient }, formats: [:html] }
      end
    else
      @uploaded_ingredients = @meal.meal_uploaded_ingredients_path
      @uploaded_ingredient = UploadedIngredient.new
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @uploaded_ingredient = UploadedIngredient.find(params[:id])
    meal = @uploaded_ingredient.meal
    @uploaded_ingredient.destroy
    redirect_to meal_uploaded_ingredients_path(meal)
  end

  private

  def ingredient_params
    params.require(:uploaded_ingredient).permit(:name)
  end

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end
end
