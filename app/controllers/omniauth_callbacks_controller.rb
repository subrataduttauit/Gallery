class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      flash[:notice] = "Signed in"
      sign_in_and_redirect user
    else
      flash[:alert] = "Some problem occured while logging"
      redirect_to new_user_registration_path
    end
  end

  alias_method :facebook, :all
end
