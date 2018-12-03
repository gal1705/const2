class RecompaniesController < ApplicationController
  def index
    if params[:category].blank?
      @recompanies = Recompany.all.order("created_at ASC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @companies = Recompany.where(category_id: @category_id).order("created_at ASC")
    end
  end

  def show
  	@projects = Project.where(recompany_id: params[:id]).order("created_at ASC")
    
  end
end
