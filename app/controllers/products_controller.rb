class ProductsController < ApplicationController
  def index
    respond_to do |format|
      format.json { @product = Product.search(params[:keyword]) }
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
