class RegistrationsController < Devise::RegistrationsController
  # NHO: is this file being used...noticed some duplicate code between here and
  # users/registrations_controller.rb ?
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
