class StaticPagesController < ApplicationController
	before_action :authenticate_user!, only: [:cities]
  def home
  end

  def about
  end

  def cities
  end
end
