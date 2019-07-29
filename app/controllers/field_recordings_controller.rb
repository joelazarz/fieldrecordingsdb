class FieldRecordingsController < ApplicationController
  
  def index
    @field_recordings = FieldRecording.all
  end

  def show
    @field_recording = FieldRecording.find(params[:id])
  end

  def new
    @field_recording = FieldRecording.new
  end

  def create
    @field_recording = FieldRecording.create(field_recording_params)
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
    params.require(:field_recording).permit(:title, :date, :description)
  end


end
