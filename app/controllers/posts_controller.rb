class PostsController < ApplicationController
	def index
		@posts = Post.all.order('created_at DESC')
	end
	def new
		
	end
	def create
		@post = Post.new(post_params)
		
		if @post.save
			redirect_to @post
		else
			flash[:alert] = "Post did not save"
			redirect_to new_post_path
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	private 
	def post_params
		params.require(:post).permit(:title, :body)
	end
end
