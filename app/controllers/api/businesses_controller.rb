class Api::BusinessesController < ApplicationController
	def index
		@businesses = Business.all
		
		render json: @businesses
	end

	def show
		@businesses = businesses.find(params[:id])

		render json: @businesses
	end

	def create
		@business = Business.new(businesses_params)

		if @business.save
			render json: @business, status: :created
		else
			render json: @business.errors, status: :unprocessable_entity
		end
	end

	def new
    @businesses = Business.new

  	end
end