class TodoController < ApplicationController
  @order = 0
    def index
        @number = 2
    end
    def show
      @or = @order
      @description = params[:description]
      if params[:id] == "1"
        @task= "Physics homework"
      elsif params[:id]== "2"
        @task= "Global homework"
      elsif params[:id] == "3"
        @task=  "Trig homework"    
      elsif params[:id] == "4"
        @task= "Spanish homework"
      end  
    end
    def new
    end
    def create
          t = Todo.new
          t.description = params['description']
          t.order = params['order']
          @order = params['order']
          t.save
          redirect_to "/todo/show/#{ t.id }"
    end
end