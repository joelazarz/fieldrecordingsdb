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
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :field_recording_id, :comment)
  end
end
