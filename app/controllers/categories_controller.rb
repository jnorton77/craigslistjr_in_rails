class CategoriesController < ApplicationController


  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    # render text: params[:category].inspect
    @category = Category.new(params[:category].permit(:name))
    @category.save
    redirect_to @category
  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
