class MealsController < ApplicationController
  before_action :set_meal, only: [:edit, :update, :destroy]
  before_action :load_recipes, only: [:new, :edit]

  def new
    @meal = Meal.new(family: current_family)
  end

  def edit
  end

  def create
    @meal = Meal.new(meal_params.merge(family_id: current_family.id))

    respond_to do |format|
      if @meal.save
        format.html { redirect_to root_path, notice: 'Meal was successfully created.' }
      else
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to edit_meal_path(@meal), notice: 'Meal was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @meal.destroy
    respond_to do |format|
      format.js   { render layout: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_params
      params.require(:meal).permit(:kind, :date, :recipe_id, :family_id)
    end

    def load_recipes
      @recipes = Recipe.all
    end
end
