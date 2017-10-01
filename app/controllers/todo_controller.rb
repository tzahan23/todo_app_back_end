class TodoController < ApplicationController
    def index
        @number = 2
    end
    def show
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
end