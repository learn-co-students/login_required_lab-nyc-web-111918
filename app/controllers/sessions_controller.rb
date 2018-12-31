class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_url
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session.include?(:name)
      session.delete(:name)
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

end
