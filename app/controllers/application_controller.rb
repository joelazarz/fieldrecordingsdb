class ApplicationController < ActionController::Base
    helper_method :user_logged_in?
    helper_method :artist_logged_in?
    helper_method :followed?
    
    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        else
            false
        end
    end

    def current_artist
        if session[:artist_id]
            Artist.find(session[:artist_id])
        else
            false
        end
    end

    def user_logged_in?
        current_user 
    end

    def artist_logged_in?
        current_artist
    end

    def followed?
        artist_id = params[:id]
        user_id = session[:user_id]
        Follow.find_by(user_id:user_id, artist_id:artist_id)
    end


end
