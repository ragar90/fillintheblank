class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user!
  	if artist_signed_in?
  		authenticate_artist!
  	elsif owner_signed_in?
  		authenticate_owner!
  	else
  		redirect_to sign_in_path
  	end
  end
end
