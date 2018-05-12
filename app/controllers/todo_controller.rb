class TodoController < ApplicationController
 def index
  @Tile="Workshop Todo List"
 end
 def show 
  @todo_count=4
  @Tile="Workshop Todo List "
  todo_id=params[:id]
  if todo_id == "1"
   @todo_description='Make the curriculum'
  elsif todo_id == '2'
   @todo_description='buy supplies'
  elsif todo_id =="3"
   @todo_description= 'Meet with the volunteer trainer'
  elsif  todo_id == '4'
    @todo_description= 'Order food for Saturday and Sunday'
  elsif todo_id == '5'
    @todo_description= 'Check pre-work assignments'
  elsif todo_id == '6'
    @todo_description= 'send workshop location to all the students'
  elsif todo_id == '7'
    @todo_description= 'have a great workshop'
  else
   @todo_description='code'
  end
 end
end
