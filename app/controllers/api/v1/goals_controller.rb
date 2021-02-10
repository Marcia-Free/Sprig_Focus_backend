class Api::V1::GoalsController < ApplicationController
    
      def index
        @goals = Goal.all.order(created_at: :desc)
        render json: @goals
      end
    

      def show
        @goal = Goal.find(params[:id])
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
          if @goal.update_attributes(goal_params)
            redirect_to @goal
          else
            render 'edit'
          end
      end


      def edit
        @goal = Goal.find(params[:id])
      end
    

      def destroy
        @goal = Goal.find(params[:id])
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
        params.require(:goal).permit(:name, :info, :date, :time, :user_id, :tag_id)
      end


end
