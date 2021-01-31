class SessionsController < ApplicationController
    
    def welcome 
        @name = session[:name]
    end 

    def new 

    end 

    def create 
      if params[:name].blank?
        redirect_to login_path
      else 
        session[:name] = params[:name]
        redirect_to root_path
      end 
    end 

    def destroy
        if session[:name] 
            session.delete :name 
        else 
            nil 
        end 
    end 


end
