class ApplicationController < ActionController::Base
    helper_method :logged_in?
    
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

    def logged_in?
        current_user || current_artist
    end


end
