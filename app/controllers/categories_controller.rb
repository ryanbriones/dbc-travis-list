class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end
  
  def show
    @category = Category.find(params[:id])
  end
end