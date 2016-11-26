class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # identification obligatoire pour tout le site
  before_action :authenticate_user!

end
