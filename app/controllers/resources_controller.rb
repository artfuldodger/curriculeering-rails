class ResourcesController < ApplicationController
  def show
    render json: resource
  end

  def update
    resource.update_attributes(resource_params)
    render json: resource
  end

  def create
    render json: lesson.resources.create(resource_params)
  end

  private

  def lesson
    Lesson.find(params[:resource][:lesson_id])
  end

  def resource
    Resource.find(params[:id])
  end

  def resource_params
    params.require(:resource).permit(:title, :url, :description)
  end
end
