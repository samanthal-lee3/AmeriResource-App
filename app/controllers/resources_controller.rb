class ResourcesController < ApplicationController

  def index
  end

  def new
    @resource = Resource.new
  end

  def create
    Resource.create(resource_params)
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :description, :rating)
  end
  
end
