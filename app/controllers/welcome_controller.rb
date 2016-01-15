class WelcomeController < ApplicationController

  def index
    @products = Product.enabled
    @tags = Tag.all
  end

end
