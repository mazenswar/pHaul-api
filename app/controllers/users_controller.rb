class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def create
        user = User.create(user_params)
        render json: user, include: :reservations
    end

    def login
        user = User.find_by(user_params)
        render json: user, include: :reservations
    end

    def user_params
        params.permit(:email)
    end
end
