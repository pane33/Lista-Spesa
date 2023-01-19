class AboutController < ApplicationController
    def index
        if !user_signed_in?
            redirect_to "/login"
            flash.alert = "REGISTRATI O ACCEDI PER PROSEGUIRE AL PROGRAMMA"
        end
    end
end
