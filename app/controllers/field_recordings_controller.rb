class FieldRecordingsController < ApplicationController
  impressionist actions: [:show]

  def index
    @field_recordings = FieldRecording.all
    if params[:search]
      @field_recordings = FieldRecording.search(params[:search])
    else
      @field_recordings = FieldRecording.all
    end
  end

  def show
    @field_recording = FieldRecording.find(params[:id])
    @artist = Artist.find { |a| a.id == @field_recording.artist_id }
    @location = Location.find { |l| l.id == @field_recording.location_id }
    @comments = @field_recording.comments
    # @comments = Comment.select { |c| c.field_recording_id == @field_recording.id }
  end

  def new
    @field_recording = FieldRecording.new
    @artist = Artist.new
    @location = Location.new
  end

  def create
    @location = Location.find_or_create_by(name: params[:field_recording][:location][:name])
    @artist = Artist.find_or_create_by(name: params[:field_recording][:artist][:name])
    @field_recording = FieldRecording.create!(field_recording_params.merge(artist_id: @artist.id, location_id: @location.id))
    if @field_recording.valid?
      redirect_to @field_recording
    else
      flash[:message] = @field_recording.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @artist = Artist.new
    @field_recording = FieldRecording.find(params[:id])
    @location = Location.new
  end

  def update
    @location = Location.find_or_create_by(name: params[:field_recording][:location][:name])
    @artist = Artist.find_or_create_by(name: params[:field_recording][:artist][:name])
    @field_recording = FieldRecording.find(params[:id])
    if @field_recording.valid?
      @field_recording.update(field_recording_params)
      redirect_to @field_recording
    else
      flash[:message] = @field_recording.errors.full_messages[0]
      render :edit
    end
  end

  def destroy
  end

  private

  def field_recording_params
    params.require(:field_recording).permit(:title, :date, :description, :avatar, :recording)
  end
end
