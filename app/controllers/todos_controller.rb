class TodosController < ApplicationController
    
    def create
        @todo = Todo.new(create_params.merge(user_id: current_user.id))
        if @todo.save
            flash.alert = "salvato"
        else
            flash.alert = "non salvato"
        end
        redirect_to root_path
    end
       

    def show
        @todo = Todo.find(params[:id])
    end

    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        redirect_to root_path
    end

    private
       
       def create_params
        params.require(:todo).permit(:item)
       end
end
