class UsersController < ApplicationController

  # def index
  #   @users = User.all.order(created_at: :desc)
  #   render json: @users, :include => :goals
  # end


  # def show
  #   set_user
  #   if @user
  #       render json: @user, :include => :tasks
  #   else
  #       render json: @user.errors
  #   end
  # end

  
  # def new
  #   @user = User.new
  # end


  # def create
  #     @user = User.create(user_params)
  #     if @user.save
  #       render json: @user
  #     else
  #       render json: @user.errors
  #     end
  # end


  # def update
  #   set_user
  #     if @user.update(user_params)
  #       render json: @user
  #     else
  #       render json: @user.errors
  #     end
  # end


  # def edit
  #  set_user
  # end


  # def destroy
  #   set_user
  #     @user.destroy
  #       render json: { message: 'User deleted!' }
  # end



  # private
  # # Use callbacks to share common setup or constraints between actions.
  # def set_user
  #   @user = User.find(params[:id])
  # end

  # # Only allow a trusted parameter "white list" through.
  # def user_params
  #   params.require(:user).permit(:username, :email, :password, :avatar)
  # end

end
