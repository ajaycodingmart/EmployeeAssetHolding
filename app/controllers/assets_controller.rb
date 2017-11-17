class AssetsController < ApplicationController
  def index
    @asset = Asset.all
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
    binding.pry
    permit_params
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
    params[:asset].permit(:name, :asset_model_id, :description)
  end
end
