class WelcomeController < ApplicationController

  def index
    @products = Product.enabled
    @pictures = Product.carrousel
    @tags = Tag.all
  end

  def search_on_product
    products = Product.search_on_product(params[:term])
    render json: cities.map{ |c| { :id => c._id, :value => "#{c.name}, #{c.region.name}, #{c.region.country.name}" } }
  end

end
