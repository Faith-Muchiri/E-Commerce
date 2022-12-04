class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        @users = User.all 
        render json: @users, status: 200
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        user = User.create!(user_params)
        render json: user
    end
    

    private 
    def user_params
        params.permit(:name,:username, :address, :email, :phone_number)
    end

    def render_not_found_response
        render json: {error: ["User Not Found"]}, status: :not_found
    end

    
    
end
