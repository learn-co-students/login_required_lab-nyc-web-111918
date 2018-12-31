class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]
  def new
  end

  def show
    if !session.include?(:name)
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include?(:name)
  end

end
