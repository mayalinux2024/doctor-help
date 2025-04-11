class MainController < ApplicationController
    
    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
    end

    def show
        @user = User.find_by(id: session[:user_id])
    end

    def new
        puts $post
    end
end