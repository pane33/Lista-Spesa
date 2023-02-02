class HomeController < ApplicationController
    def index
        @todos = Todo.all
        if !user_signed_in?
            redirect_to "/login"
            flash.alert = "REGISTRATI O ACCEDI PER PROSEGUIRE AL PROGRAMMA"
        end
    end

    def show
        @todos = Todo.find(params[:id])
    end
end
