class LessonsController < ApplicationController
  def show
    render json: Lesson.find(params[:id])
  end
end
