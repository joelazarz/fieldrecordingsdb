class LocationsController < ApplicationController
  impressionist actions: [:show]

  def index
    @locations = Location.all
    @locations = @locations.sort_by { |l| l.name.downcase }
  end

  def show
    @location = Location.find(params[:id])
    @field_recordings = @location.field_recordings
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    if @location.valid?
      @location.save
      redirect_to locations_path
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
    @location.update(location_params)
    redirect_to location_path(@location)
  end

  def destroy
  end

  private

  def location_params
    params.require(:location).permit(:name, :description)
  end
end
