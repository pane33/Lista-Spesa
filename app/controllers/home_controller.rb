class HomeController < ApplicationController
    def index
        @todo = current_user.todos
        if !user_signed_in?
            
            redirect_to "/login"
            flash.alert = "REGISTRATI O ACCEDI PER PROSEGUIRE AL PROGRAMMA"
        end
    end

    def show
        
    end
end
