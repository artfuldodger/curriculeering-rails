class LessonsController < ApplicationController
  def index
    render json: curriculum.lessons.ordered
  end

  private

  def curriculum
    Curriculum.find(params[:curriculum_id])
  end
end
