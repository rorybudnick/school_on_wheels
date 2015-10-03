class TutorsController < ApplicationController
  def new
    @tutor = Tutor.new
  end

  private

  def load_user
    return @tutor = Tutor.find(params[:id])
  end

  def user_params
    params.require(:tutor).permit(:first_name, :last_name, :email_address, :password, :password_confirmation, :phone_number, :address)
  end

  def authenticate
    unless logged_in?
      redirect_to login_path
    end
  end

  def authorize
    unless current_user == @user
      redirect_to login_path
    end
  end
end