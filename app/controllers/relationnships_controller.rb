class RelationnshipsController < ApplicationController
     belongs_to :follower, class_name: "Customer"
     
     
   
  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :telephon_number])
  end

end
