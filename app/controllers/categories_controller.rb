class CategoriesController < ApplicationController

  def index
    @cat = Category.all
  end

  def new
    @cat = Category.new
  end


  def create
    @cat = Category.new(params.require(:category).permit(:name))
    if @category.save
      flash[:success] = 'new Category added succesfully'
     else
      render 'new'
    end
  end

  def edit
    @cat = Category.find_by(id: params[:category_id])

  end

  def update
    
  end
end

