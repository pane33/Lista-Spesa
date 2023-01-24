class TodosController < ApplicationController
    def index
    end
    
    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            flash.alert = "todo saved"
            redirect_to root_path
        else
            flash.alert = "todo not saved"
            redirect_to root_path
        end
    end

    def show
        @todo = Todo.find(params[:id])
        @todo.show
    end

    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        redirect_to root_path
    end

    private

        def todo_params
            params.require(:todo).permit(:item)
        end
end
