class RegistrationsController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:customer).permit(:first_name, :last_name, :username, :password, :email, :password_confirmation)
  end

  def account_update_params
    params.require(:customer).permit(:first_name, :last_name, :username, :password, :email, :password_confirmation,
                                     :current_password)
  end
end