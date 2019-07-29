class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(artist_params)
    if @artist.valid?
    @artist.save
    redirect_to @artist
    else
    flash[:message] = @artist.errors.full_messages[0]
    render :new
    end
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
    params.require(:artist).permit(:name, :description)
  end

end
