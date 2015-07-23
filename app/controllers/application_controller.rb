class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # This allows for the name value to be whitelisted
  # the username should now show up when logged in. the
  # reason it didn't before was because rails defaults to 
  # strong_params. I now have to update my registrations
  #edit.html.erb file

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :name
  	devise_parameter_sanitizer.for(:account_update) << :name
  end
end
