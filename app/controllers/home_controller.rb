class HomeController < ApplicationController:
	before_action :set_auth
  def about
  end

  def cities
  end

  def niehgborhoods
  end

  private

  def set_auth
  	@auth = session[:omniauth] if session[:omniauth]
  	
  end
end
