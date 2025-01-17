class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :cart, :current_user, :current_registered_user?, :current_admin?, :current_merchant_user?, :current_merchant_admin?

  def cart
    @cart ||= Cart.new(session[:cart])
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_registered_user?
    current_user && current_user.registered_user?
  end

  def current_merchant_user?
    current_user && current_user.merchant_id
  end

  def current_merchant_admin?
    current_user && current_user.merchant_admin?
  end

  def current_admin?
    current_user && current_user.admin?
  end
end
