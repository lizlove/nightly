class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    @user = User.find(resource.id)
    user_posts_path(@user)
  end

  def after_sign_in_path_for(resource)
    @user = User.find(resource.id)
    user_posts_path(@user)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :sponsor_email
  end




end
