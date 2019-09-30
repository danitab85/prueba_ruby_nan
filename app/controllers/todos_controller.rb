class TodosController < ApplicationController



  def update
    todo = Todo.find(params[:todo_id])
    todo.completed == !todo.completed
    todo.save
    redirect_to root_path
    end
end
