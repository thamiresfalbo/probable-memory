class HomeController < ApplicationController
  # Says to show the index even when there is no login.
  skip_before_action :require_login, only: :index
  
  def index
  end
end
