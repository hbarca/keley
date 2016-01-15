class WelcomeController < ApplicationController
  def index
    @products = Product.enabled
  end
end
