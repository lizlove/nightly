class UsersController < ApplicationController

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :sponsor_email)
    end

end
