class ApplicationController < ActionController::Base
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number])
  end
    
  def after_sign_in_path_for(resource)
    public_homes_top_path
  end
  def after_sign_up_path_for(resource)
    public_homes_top_path
  end

  def after_sign_out_path_for(resource)
    public_homes_top_path
  end
  # before
end
