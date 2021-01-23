class UsersController < ApplicationController


    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def index 
        users = User.all
        render json: users
    end

    def update 
        @user = User.find(params[:id])
        if @user.update(users_params)
            render json: @user
        else
            render json: {error: 'Need Update'}, status: :bad_request
        end
    end

    def create
        user = User.create(users_params)
        render json: user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy 
    end

    private 

    def users_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :address, :phone)
    end

end

