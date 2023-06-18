class MealsController < ApplicationController
  before_action :set_meal, only: [:edit, :update, :destroy]

  def index
    @meals = Meal.all
  end

  def new
  end

  def create
    if @meal = Meal.create(meal_params)
      flash[:success] = "#{@meal.name} saved"
    else
      flash[:error] = "oopsie woopsie"
    end

    redirect_to meals_path
  end

  def edit
  end

  def update
    if @meal.update(meal_params)
      flash[:success] = "#{@meal.name} updated"
    else
      flash[:error] = "oopsie woopsie"
    end

    redirect_to meals_path
  end

  def destroy
    if @meal.destroy
      flash[:success] = "#{@meal.name} deleted"
    else
      flash[:error] = "oopsie woopsie"
    end

    redirect_to meals_path
  end

  private

  def meal_params
    params.require(:meal).permit(
      :name,
      :recipe_url,
      :image_url
    )
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end
