class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	
	def new
		@post = Post.new
	end
	
	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to "/"
		else
			render :new
		end
	end
	
	def show
		@post = Post.find(params[:id])
	end
	
	def edit
		@post = Post.find(params[:id])
		flash[:notice] = "Begin Editing!"
	end
	
	def update
		@post = Post.find(params[:id])
		if @post.update(params[:post])
			flash[:notice] = "Successful Update!"
			redirect_to post_path(@post)
		else
			render :edit
		end
	end
	
	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			flash[:notice] = "Post Deleted"
				redirect_to "/"
		else
			flash[:notice] = "something went wrong haha"
			render :show
		end
	end
	
	private
	 def post_params
	 	params.require(:post).permit(:title, :body, :avatar)
	 end
end