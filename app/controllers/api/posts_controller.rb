
class Api::PostsController < ApplicationController
	def index
		@posts = Post.all

		render json: @posts 
	end

	def show
		@posts = current_user.posts.find(params[:id])

		render json: @posts
	end

	def create
		@post = Post.new(posts_params)

		if @post.save
			render json: @post, status: :created
		else
			render json: @post.errors, status: :unprocessable_entity
		end
	end

	def new
    @posts = Post.new

  	end

  
  	def edit
    @posts = current_user.posts.find(params[:id])

  	end

	def update 
		@posts = current_user.posts.find(params[:id])

		if @posts.update(posts_params)
			render json: @posts, status: :ok
		else
			render json: @posts.errors, status: :unprocessable_entity
		end
		
	end

	def destroy 
		@posts = current_user.posts.find(params[:id])

		@posts.destroy

		render json: '', status: :no_content
	end

	private

	def posts_params

		params.require(:post)
		.permit(:title, :content, :photourl, :id, :created_at, :updated_at, :user_id)
		.merge(user_id: current_user.id)
	end
end