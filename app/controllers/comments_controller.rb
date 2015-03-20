class CommentsController < ApplicationController
	def new
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new
	end
	
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(params[:comment])
		if @comment.save
			flash[:notice] = "Comment added!"
			redirect_to posts_path(@post) 
		else
			render :new
		end
	end
	
	def show
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
	end
	
	def edit
		@post = Post.find(params[:post_id])
		@comment = Comment.find(params[:id])
	end
	
	def update
		@post = Post.find(params[:post_id])
		@comment = Comment.find(params[:id])
		if @comment.update(params[:comment])
			flash[:notice] = "Comment successfully updated"
			redirect_to post_path(@post)
		else
			render :edit
		end
	end
	
	def destroy
		@post = Post.find(params[:post_id])
		@comment = Comment.find(params[:id])
		if @comment.destroy
			flash[:notice] = "successfully Deleted!"
			redirect_to post_path(@post)
		else
			render :show
		end
	end
end