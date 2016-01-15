class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :determine_layout
  
  def determine_layout
    self.class.to_s =~ /Admin/ ? "admin" : "application"
  end


end
