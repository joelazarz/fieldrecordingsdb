class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    if @location.valid?
    @location.save
    redirect_to @location
    else
    flash[:message] = @location.errors.full_messages[0]
    render :new
    end
  end

  def edit
    @location = Location.find(params[:id])

  end

  def update
    @location = Location.find(params[:id])

  end

  def destroy
  end

  private 

  def location_params
    params.require(:location).permit(:name, :description)
  end
end
