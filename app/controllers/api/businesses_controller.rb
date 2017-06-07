class Api::BusinessesController < ApplicationController
	def index
		@businesses = Business.all
		
		render json: @businesses
	end

	def show
		@businesses = Business.find(params[:id])

		render json: @businesses
	end

	def create
		@business = Business.create(businesses_params)

		if @business.save
			render json: @business, status: :created
		else
			render json: @business.errors, status: :unprocessable_entity
		end
	end

	def new
    @businesses = Business.new

  	end

  	private

  	def businesses_params

		params.require(:business)
		.permit(:name, :description, :street, :city, :zipcode, :id, :longitude, :latitude, :photourl, :website, :state, :created_at, :updated_at)
	
	end
end