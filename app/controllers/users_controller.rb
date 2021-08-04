class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def create
        user = User.new(user_params)
        if user.save 
            render json: user, include: :reservations
        else
            render json: {error: 'failed to create user'}, status: 500
        end
    end

    def login
        user = User.find_by(user_params)
        if user.id    
            render json: user, include: :reservations
        else
            render json: {error: 'incorrect email'}
        end
    end

    def user_params
        params.require(:user).permit(:email)
    end
end
