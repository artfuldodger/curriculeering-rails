class CurriculumsController < ApplicationController
  def index
    render json: Curriculum.alphabetized
  end

  def show
    render json: curriculum
  end

  def update
    curriculum.update_attributes(curriculum_params)
    render json: curriculum
  end

  private

  def curriculum_params
    params.require(:curriculum).permit(:title, :description)
  end

  def curriculum
    @curriculum ||= Curriculum.find(params[:id])
  end
end
