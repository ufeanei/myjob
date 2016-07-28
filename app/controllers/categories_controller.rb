class CategoriesController < ApplicationController
  before_action :require_admin

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
      redirect_to categories_path
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


  private

  def require_admin
    if !current_user.admin?
      flash[:danger] = "Du kan ikke gjøre det"
      redirect_to jobs_path 
    end
 end
end

