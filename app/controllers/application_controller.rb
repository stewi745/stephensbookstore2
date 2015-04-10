class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  helper_method :current_user
  include ApplicationHelper
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, :alert => exception.message
  end
  
  def authorise
  unless signed_in?
  store_location
  redirect_to signin_path, :notice => "Please sign in to access this page."
  end
  end
  
  def store_location
  session[:return_to]= request.fullpath
end
  
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
end

	def current_user
	User.find_by id: session[:user_id] if session[:user_id]

end
end