class PostsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @post = @category.posts.build
  end
  
  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.build(params[:post])
    
    if @post.save
      redirect_to category_path(@category)
    end
  end
end