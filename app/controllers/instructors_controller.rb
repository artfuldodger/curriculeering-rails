class InstructorsController < ApplicationController
  def index
    render json: Instructor.all, include: 'instructor'
  end

  def show
    render json: Instructor.find(params[:id])
  end
end
