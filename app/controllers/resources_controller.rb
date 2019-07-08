class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    Resource.create(resource_params)
    redirect_to root_path
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :description, :rating)
  end
  
end
