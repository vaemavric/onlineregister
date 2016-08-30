class CommentsController < ApplicationController
	before_action :set_student
	def new 
		@comment = Comment.new 
	end
	def create 
		@comment = @student.comments.build(comment_params) 
		if @comment.save
			flash[:success] = "Comment added"
			redirect_to :back
			
		else 
			redirect_to :back 
		end 
	end
	private 
	def comment_params 
		params.require(:comment).permit(:content) 
	end
	def set_student
		@student = Student.find(params[:student_id])
	end
end
