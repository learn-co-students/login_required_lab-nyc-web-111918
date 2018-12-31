class SecretsController < ApplicationController
  before_action :login_required

  def show
  end

  private

  def login_required
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
