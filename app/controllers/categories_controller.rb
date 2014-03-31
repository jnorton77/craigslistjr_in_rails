class CategoriesController < ApplicationController


  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end

  def create
    # render text: params[:categories].inspect
    @categories = Category.new(params[:categories].permit(:name))
    @categories.save
    redirect_to @categories
  end

  def show
    @category = Category.find(params[:id])
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
