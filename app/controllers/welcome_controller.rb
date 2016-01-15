class WelcomeController < ApplicationController

  def index
    @products = Product.enabled
    @pictures = Product.carrousel
    @tags = Tag.all
  end

  def search_on_product
    products = Product.search(params[:term])
  end

end
