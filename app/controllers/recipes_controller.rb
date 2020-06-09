class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.build(ingredient_type: 'first')
    @recipe.ingredients.build(ingredient_type: 'second')
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
  end

  private

  def recipe_params
      params.require(:recipe).permit(:title)
  end 
  
end
