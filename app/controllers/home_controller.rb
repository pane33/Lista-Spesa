class HomeController < ApplicationController
    def index
        @todos = Todo.all
<<<<<<< HEAD
        
=======
>>>>>>> 893b664581a5bac1b152d1b5a69ad42f4b063a06
        if !user_signed_in?
            redirect_to login_path
            flash.alert = "REGISTRATI O ACCEDI PER PROSEGUIRE AL PROGRAMMA"
        end
    end
end
