class LessonsController < ApplicationController
  def show
    render json: lesson
  end

  def update
    lesson.update_attributes(lesson_params)
    render json: lesson
  end

  def create
    render json: curriculum.lessons.create(lesson_params)
  end

  private

  def curriculum
    Curriculum.find(params[:lesson][:curriculum_id])
  end

  def lesson
    Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :description)
  end
end
