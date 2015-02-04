class CategoriesController < ApplicationController
  def index
    @cats = Category.all
  end

  def new
    @cat = Category.new
  end

  def create
    @cat = Category.new(category_params)

    if @cat.save
      flash[:notice] = 'Category has been saved'
      redirect_to posts_path
    else
      render :new
    end

  end


  private

  def category_params
    params.require(:category).permit(:name)
  end
end
