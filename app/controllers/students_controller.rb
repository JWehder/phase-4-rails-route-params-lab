class StudentsController < ApplicationController

  def index
    students = Student.find_by(first_name: params[:name] || last_name: params[:name])
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
