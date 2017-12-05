class CompaniesController < ApplicationController
  def index
    unless current_user.role == 'superadmin'
      flash[:notice] = "You don't have access to companies page!"
      redirect_to root_path
    end
  end

  def show
    @company_name = Company.find(current_user.company_id).name
    @company = Company.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @cus_params = params[:company]
  end

  def withdraw_assets
  end

  def assign_assets
    @cus_params = params[:company]
  end

  def submit_assets
    binding.pry
  end

  private def permit_params 
    params[:company].permit(:asset_name, :user_name)
  end
end
