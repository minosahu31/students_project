class StudentsController < ApplicationController
  before_action :current_student, only: [:show, :edit, :update , :destroy]

  def index
    @students = Student.all
  end

  def show
    #@student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to root_path
    else
      render "new"  
    end  
  end

  def edit

  end

  def update
    if @student.update(student_params)
      redirect_to students_path
    else
      render students_edit_path
    end  
  end

  def destroy
    if @student.destroy
      redirect_to students_path
    end
  end

  private
  
  def current_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :student_class, :marks , :description)
  end 

end
