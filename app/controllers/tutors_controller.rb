class TutorsController < ApplicationController
  before_action :load_tutor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, :authorize, only: [:show, :edit, :update]

  def new
    @tutor = Tutor.new
  end

  def create
    @tutor = Tutor.new(tutor_params)
    if @tutor.save
      session[:tutor_id] = @tutor.id
      redirect_to tutor_path(@tutor)
    else
      render(:new)
    end
  end

  def update
    @update_worked = @tutor.update(tutor_params)
    if @update_worked
      redirect_to tutor_path(@tutor)
    else
      render(:edit)
    end
  end

  def show
  end

  def index
  end

  def edit
    @update_worked = true
  end

  def destroy
    @tutor.destroy
    session.destroy
    redirect_to root_path
  end

  private

  def load_tutor
    return @tutor = Tutor.find(params[:id])
  end

  def tutor_params
    params.require(:tutor).permit(
      :first_name,
      :last_name,
      :email_address,
      :password,
      :password_confirmation,
      :phone_number,
      :address,
      :interviewed,
      :grades,
      :notes,
      :matched,
      :dv
    )
  end

  def authenticate
    unless logged_in?
      redirect_to login_path
    end
  end

  def authorize
    unless current_user == @tutor
      redirect_to login_path
    end
  end
end