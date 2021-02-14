  class AuthController < ApplicationController

    def new
      @user = User.new
    end


    def create
      user = User.find_by(username: params[:username])

      if user && user.authenticate(params[:password])
        render json: user, :include => :goals
      else
        render json: { error: 'Username or Password does not exist.'}
      end
  
      # find the user based on username
      # if the user exists
      #   verify that the password matches the one they provided
      #   if it does:
      #     send back that user
      #   if not:
      #     send error message
      # if no user found: 
      #  send an error
    end

    def index
      @users = User.all.order(created_at: :desc)
      render json: @users, :include => :goals
    end

    def show
      set_user

      if @user && user.authenticate(params[:password])
          render json: @user, :include => :goals
      else
          render json: @user.errors
      end
    end

      private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(username: params[:username])
  end

end