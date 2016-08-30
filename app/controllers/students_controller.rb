class StudentsController < ApplicationController
	before_action :require_user, only: [:index, :show, :create]
	def index
		@students = Student.all
	end
	def show 
		@student = Student.find(params[:id]) 
		@comments = @student.comments
		@comment = Comment
	end
	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		flash[:success] = "Comment deleted :("
		redirect_to :back
	end
	

end
