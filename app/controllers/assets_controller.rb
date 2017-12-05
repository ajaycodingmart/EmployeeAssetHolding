class AssetsController < ApplicationController
  def index
    @asset = Asset.all
    @user_company = Company.find(current_user.company_id).name
  end

  def show
    @asset = Asset.find(params[:id])
  end

  def new
    @asset = Asset.new
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def create
    params[:asset][:company_id] = current_user.company_id
    params[:asset][:user_id] = current_user.id
    params[:asset][:quantity_used] = 0 
    @asset = Asset.new(permit_params)
    if @asset.save
      redirect_to @asset
    else
      render 'new'
    end
  end

  def update
    @asset = Asset.find(params[:id])
      if @asset.update(asset_params)
        redirect_to @asset
      else
        render 'edit'
      end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to assets_path
  end

  private def permit_params
    params[:asset].permit(:name, :asset_model_id, :description, :user_id, :company_id, :quantity_used)
  end
end
