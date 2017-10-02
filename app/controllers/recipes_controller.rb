class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :load_ingredients, only: [:edit, :update]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe.ingredients_amounts.build
  end

  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to edit_recipe_path(@recipe), notice: 'Recipe was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to edit_recipe_path(@recipe), notice: 'Recipe was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.fetch(:recipe, {})
        .permit(:name, :author, :origin, :cook_time, :servings, 
          ingredients_amounts_attributes: [:id, :ingredient_id, :amount, :units])
    end

    def load_ingredients
      @ingredients = Ingredient.all
    end
end
