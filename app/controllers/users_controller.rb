class UsersController < ApplicationController
    def show
        user = User.find_by_id(params[:id])
        if user
            render json: user, include: :items
        end
    end
end
