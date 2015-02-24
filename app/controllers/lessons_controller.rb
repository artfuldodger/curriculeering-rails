class LessonsController < ApplicationController
  def show
    render json: lesson
  end

  def update
    lesson.update_attributes(lesson_params)
    render json: lesson
  end

  private

  def lesson
    Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :description)
  end
end
