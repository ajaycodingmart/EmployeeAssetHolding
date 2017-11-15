class AssetController < ApplicationController
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
    # @asset = Asset.find(params[:id])
  end

  def create
    # @asset = Asset.new(permit_params)
  end

  private def permit_params
    params[:asset].permit(:name, :asset_id, :description, :quantity_avaliable, :company_id)
  end
end
