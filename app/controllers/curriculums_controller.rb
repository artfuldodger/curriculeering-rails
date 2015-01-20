class CurriculumsController < ApplicationController
  def index
    render json: Curriculum.alphabetized
  end

  def show
    render json: Curriculum.find(params[:id]), include: 'instructor'
  end
end
