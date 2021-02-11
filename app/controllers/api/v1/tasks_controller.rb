class Api::V1::TasksController < ApplicationController
    def index
        @tasks = Task.all
        render json: @tasks
      end
    

      def show
        set_task
        if @task
            render json: @task
        else
            render json: @task.errors
        end
      end


      def new
        @task = Task.new
      end
      
      

      def create
          @task = Task.create(task_params)
          if @task.save
            render json: @task
          else
            render json: @task.errors
          end
      end
  

      def update
        set_task
          if @task.update(task_params)
            render json: @task
          else
            render json: @task.errors
          end
      end


      def edit
       set_task
      end
    

      def destroy
        set_task
          @task.destroy
            render json: { message: 'Task deleted!' }
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_task
        @task = Task.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def task_params
        params.require(:task).permit(:name, :description, :completed, :goal_id)
      end

end
