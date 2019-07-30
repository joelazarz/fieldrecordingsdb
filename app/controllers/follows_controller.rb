class FollowsController < ApplicationController
  
  def index
  end

  def create
    @artist = Artist.find(params[:id])
    artist_id = params[:id]
    user_id = session[:user_id]
    follow = Follow.create(user_id:user_id, artist_id:artist_id)
    session[:followed] = true
    redirect_to artist_path
  end

  def destroy
    artist_id = params[:id]
    user_id = session[:user_id]
    @follow = Follow.find_by(user_id:user_id, artist_id:artist_id)
    @follow.destroy
    session[:followed] = false
    redirect_to artist_path
  end

end
