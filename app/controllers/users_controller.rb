class UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: @users
    end 

    def create 
        @user = User.create!(user_params)
        if @user.valid?
            render json:@user 
        else
            render json: {error: "Invalid User"}
        end 
    end 



    def login 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: @user
        else
            render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
        end
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :email, :phone, :location, :username, :password)
    end 
end
