class TodoController < ApplicationController
 
  def index
   @Tile="Workshop Todo List"
  end
  
  def show 
   @Tile="Workshop Todo List "
   todo_id=params[:id]
   if todo_id == "1"
    @todo_description='Make the curriculum'
    @pomodoro_estimate='3'
   elsif todo_id == '2'
    @todo_description='buy supplies'
    @pomodoro_estimate= '2'
   elsif todo_id =="3"
    @todo_description = 'Meet with the volunteer trainer'
    @pomodoro_estimate = '1'
   elsif  todo_id == '4'
     @todo_description= 'Order food for Saturday and Sunday'
     @pomodoro_estimate = '2'
   elsif todo_id == '5'
     @todo_description= 'Check pre-work assignments'
     @pomodoro_estimate= '5'
   elsif todo_id == '6'
     @todo_description= 'send workshop location to all the students'
     @pomodoro_estimate= '5'
   elsif todo_id == '7'
     @todo_description= 'have a great workshop'
     @pomodoro_estimate = '4'
   else
    @todo_description='code'
   end
  end
  def new 
  end 
  def create
  t = Todo.new
  t.description = params['description']
  t.pomodoro_estimate = params['pomodoro_estimate']
  t.save
  redirect_to "/todo/show/#{ t.id }"
  end
end