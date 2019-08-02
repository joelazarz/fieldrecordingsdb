class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @comments = @user.comments
    @follows = @user.follows
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
  end

  def analysis
    @users = User.all
    @field_recordings = FieldRecording.all
    @artists = Artist.all
    @locations = Location.all
    @comments = Comment.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
