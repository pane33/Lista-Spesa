class LoginController < ApplicationController
    def index
        @persona = Persona.all
    end

    def create
        @persona = Persona.new(persona_params)   
        if @persona.save
            redirect_to root_path
        else
            redirect_to login_path
        end
    end

    private 
        def persona_params
            params.require(:persona).permit(:user, :pass)
        end
end
