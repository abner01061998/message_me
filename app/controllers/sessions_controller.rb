class SessionsController < ApplicationController
    before_action :logged_in_redirect, only: [:new, :create]
    def new
    end

    def create
        user = User.find_by_username(session_params[:username])
        if user and user.authenticate(session_params[:password])
            session[:user_id] = user.id
            flash[:success] = "Welcome to Chatify"
            redirect_to root_path
        else
            flash[:error] = "Your credentials are not valid, please check you username/password and try again"
            render "new"
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to new_session_path, status: :see_other
    end

    private 
    def session_params
        params.require(:session).permit(:username,:password)
    end

    def logged_in_redirect
        if logged_in?
            flash[:error] = "You are already logged in"
            redirect_to root_path
        end
    end
end