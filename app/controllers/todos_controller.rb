class TodosController < ApplicationController
    def index
        
    end
    
    def create
        @todo = Todo.new
        redirect_to root_path
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
       def set_todo_list
        @todo_list = TodoList.find(params[:todo_list_id])
       end
       
       def todo_item_params
        params[:todo_item].permit(:content)
       end
end
