class Api::V1::GoalsController < ApplicationController
    
      def index
        @goals = Goal.all.order(created_at: :desc)
        render json: @goals
      end
    

      def show
        set_goal
        if @goal
            render json: @goal
        else
            render json: @goal.errors
        end
      end


      def create
          @goal = Goal.create(goal_params)
          if @goal.save
            render json: @goal
          else
            render json: @goal.errors
          end
      end
  

      def update
        set_goal
          if @goal.update(goal_params)
            render json: @goal
          else
            render json: @goal.errors
          end
      end


      def edit
       set_goal
      end
    

      def destroy
        set_goal
          @goal.destroy
            render json: { message: 'Goal deleted!' }
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_goal
        @goal = Goal.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def goal_params
        params.require(:goal).permit(:name, :info, :date, :time, :completed, :user_id, :tag_id)
      end


end
