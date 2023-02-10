class HomeController < ApplicationController
    def index
        
        if !user_signed_in?
            redirect_to "/login"
            flash.alert = "REGISTRATI O ACCEDI PER PROSEGUIRE AL PROGRAMMA"
        end
        @todos = Todo.where(user: current_user)
    end

    def show
        @todos = Todo.find(params[:id])
    end
    
end
