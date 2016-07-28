class CategoriesController < ApplicationController

  def index
    @cat = Category.all
  end

  def new
    @cat = Category.new
  end


  def create
    @cat = Category.new(params.require(:category).permit(:name))
    if @cat.save
      flash[:success] = 'New Category added succesfully'
     else
      render 'new'
    end
  end

  def edit
    @cat = Category.find_by(id: params[:id])
  end

  def update
    @cat = Category.find_by(id: params[:id])
    if @cat.update_attributes(params.require(:category).permit(:name))
      flash[:success] = 'Category updated successfully'
      redirect_to categories_path
    else
      render 'edit'
    end
  end
end

