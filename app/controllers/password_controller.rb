class PasswordController < ApplicationController
  before_action :require_user_logged_in

  def edit

  end

  def update
    if Current.user.update(params_password)
      redirect_to root_path, notice: "Password Updated Successfully"
    else
      render :edit
    end

  end

  private
  def params_password
    params.require(:user).permit(:password,:password_confirmation)
  end
end
