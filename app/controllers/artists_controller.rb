class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @field_recordings = @artist.field_recordings
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(artist_params)
    session[:artist_id] = @artist.id
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
  end

  def destroy
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :username, :password, :email, :description, :avatar)
  end
  
end
