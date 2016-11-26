class PublicController < ApplicationController

  # pour indiquer quqe cette page nécessite pas d'identification
  skip_before_action :authenticate_user!, :only => [:home]

  def home
    if !current_user.nil?
      redirect_to dashboard_path
    end
  end
end
