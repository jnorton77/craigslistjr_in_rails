class PostsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.create(params[:post].permit(:title, :description, :category_id))
    redirect_to category_path(@category)
  end

  def edit
    @post = Post.find(params(:id))
  end
end
