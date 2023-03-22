class TodosController < ApplicationController
    def get_todos 
       todos =  Todo.all
       render json: todos
    end
    def create 
        title  = params[:title]
        description = params[:description]
        priority = todo_params[:priority]

        todo  =  Todo.create(todo_params)

        render json: todo
    end

    private
    def todo_params
        params.permit(:title, :description, :priority)
    end
end
