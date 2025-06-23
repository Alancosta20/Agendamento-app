class UsersController < ApplicationController
    allow_unauthenticated_access only: %i[ new create ]

    def new
        @user = User.new
    end
    
    def create
        @user = User.new(users_params)
        if @user.save
            redirect_to users_path
        else
            render :new
        end
    end

    private

    def users_params
        params.require(:user).permit(:email_address, :password, :phone, :name)
    end
    
end
