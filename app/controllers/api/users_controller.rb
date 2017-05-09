class Api::UsersController < ApplicationController
	def index
		@user = current_user

		render json: @user 
	end

	def show
		@user = current_user.find(params[:id])

		render json: @user
	end

	def create
		@user = User.new(user_params)

		if @user.save
			render json: @user, status: :created
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end

	def new
    @user = User.new

  	end

  
  	def edit
    @user = current_user.find(params[:id])

  	end

	def update 
		@user = current_user.find(params[:id])

		if @user.update(user_params)
			render json: @user, status: :ok
		else
			render json: @user.erros, status: :unprocessable_entity
	end

	def destroy 
		@user = current_user.find(params[:id])

		@user.destroy

		render json: '', status: :no_content
	end

	private

	def user_params
		params.require(:user)
		.permit(:email)
		
end