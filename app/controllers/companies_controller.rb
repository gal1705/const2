class CompaniesController < ApplicationController
  def index
    if params[:category].blank?
      @companies = Company.all.order("created_at ASC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @companies = Company.where(category_id: @category_id).order("created_at ASC")
    end
  end

  def show
    @company = Company.find(params[:id])
  	# @projects = Project.where(recompany_id: params[:id]).order("created_at ASC")
  end

  def contact
    @company = Company.find(params[:id])
  end

end
