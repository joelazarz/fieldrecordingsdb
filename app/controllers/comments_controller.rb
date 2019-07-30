class CommentsController < ApplicationController
  # def index
  # end

  # def show
  # end

  def new
    @comment = Comment.new
    @field_recording = FieldRecording.find(params[:id])
    @user_id = session[:user_id]
    # byebug
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to field_recording_path(@comment.field_recording_id)
  end

  def edit
    @comment = Comment.find(params[:id])
    @field_recording = @comment.field_recording
    @user_id = session[:user_id]
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    @field_recording = @comment.field_recording
    redirect_to field_recording_path(@field_recording.id)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @field_recording = @comment.field_recording
    @comment.destroy
    redirect_to user_path(session[:user_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :field_recording_id, :comment)
  end
end
