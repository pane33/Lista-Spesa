class TodosController < ApplicationController
    def crea
        @todo = Todo.new(todo_params)
        if @todo.save
            redirect_to root_path
        else
            redirect_to root_path
        end
    end

    def distruggi
    end

    private

        def todo_params
            params.require(:todo).permit(:item)
        end
end
