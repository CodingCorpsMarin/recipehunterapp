class RecipesController < ApplicationController
  def index
    @search_term = params[:search] || ""
    @recipes = Recipe.for(@search_term)
  end

  def search
  	@search_term = params[:search]
     @recipes = Recipe.for(@search_term)
    redirect_to "recipes/index/?search=#{params[:search]}"
  end
end
