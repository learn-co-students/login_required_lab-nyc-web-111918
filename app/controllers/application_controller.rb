class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    redirect_to '/sessions/new' if !session[:name]
  end

  def current_user
    session[:name]
  end

  private

  def require_login
    if !current_user
      redirect_to '/sessions/new'
    end
  end

end
