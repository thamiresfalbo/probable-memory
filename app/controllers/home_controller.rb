class HomeController < ApplicationController
  # Says to show the index even when there is no login.
  allow_unauthenticated_access only: :index

  def index; end
end
