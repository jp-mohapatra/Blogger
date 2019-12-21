class CommentsController < ApplicationController
	def add_comment
	   
       @comment = Comment.create(comment_params)

       	if @comment
       		@blog = Blog.find(params[:comment][:blog_id])
       		@comments = @blog.comments.order(id: :desc)
       		render plain: "ok", partial: "shared/comments"
        end
	end

	def get_comments
		
	end

	protected

	def comment_params
		params.require(:comment).permit(:comment, :created_by, :blog_id)
	end
end
