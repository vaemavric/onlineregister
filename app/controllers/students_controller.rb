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
	def edit
		@student = Student.find(params[:id]) 
	end
	def update
		@student = Student.find(params[:id]) 
		@student.update(student_params)
		redirect_to(student_path(@student))
	end
	def edit
		@student = Student.find(params[:id])
	end
	
	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		flash[:success] = "Comment deleted :("
		redirect_to :back
	end
	private
	def student_params
		params.require(:student).permit(:year, :age, :contact)
	end

end
