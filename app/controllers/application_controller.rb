class ApplicationController < ActionController::Base
  include Authentication
  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path, alert: 'You must login!'
  end
end
