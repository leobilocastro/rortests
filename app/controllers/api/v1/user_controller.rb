module Api
    module V1
        class UsersController < ApplicationController
            def index
                @users = User.all()
                render json: @users
            end

            def create
                user = User.create(users_param)
                render json: user
            end

            def users_param
                params.require(:user).permit(:nome, :phone, :password)
            end
        end
    end
end