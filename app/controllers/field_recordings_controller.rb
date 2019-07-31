class FieldRecordingsController < ApplicationController
  def index
    @field_recordings = FieldRecording.all
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
    @location = Location.new
  end
  
  def create
    @location = Location.find_or_create_by(name: params[:field_recording][:location][:name])
    @field_recording = FieldRecording.create(field_recording_params.merge(artist_id:session[:artist_id],location_id:@location.id))
    if @field_recording.valid?
      @field_recording.save
      redirect_to @field_recording
    else
      flash[:message] = @field_recording.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @field_recording = FieldRecording.find(params[:id])
  end

  def update
    @field_recording = FieldRecording.find(params[:id])
  end

  def destroy
  end

  private

  def field_recording_params
    params.require(:field_recording).permit(:title, :date, :description, :photos, :recording)
  end

end
