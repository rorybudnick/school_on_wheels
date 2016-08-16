class SessionController < ApplicationController
  def new
    render(:new)
  end

  def create
    # find if any user has that email
    tutor = Tutor.find_by(email_address: params[:email_address])

    # if that user exists and it has a password that was sent
    if tutor && (tutor.authenticate(params[:password]))

      # save the user_id in the session hash
      session[:tutor_id] = tutor.id

      # and redirect to that user's home page
      redirect_to(tutor_path(tutor))
    else

      # the email/password is wrong!
      @message = "This email and password combination does not exist."
      render(:new)
    end
  end

  def destroy
    session[:tutor_id] = nil
    redirect_to root_path
  end
end
