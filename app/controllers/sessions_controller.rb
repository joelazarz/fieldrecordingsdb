class SessionsController < ApplicationController


    def new
    end

    def new_artist
    end
    
    def log_user
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to @user
        else
            render :new_user
        end
    end

    # def log_artist
    #     @artist = Artist.find_by(username: params[:username])
    #     if @artist && @artist.authenticate(params[:password])
    #         session[:artist_id] = @artist.id
    #         redirect_to @artist
    #     else
    #         render :new_artist
    #     end
    # end


    def destroy
        session[:user_id] = nil
        # redirect to root
        redirect_to login_user_path
    end


end