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
end