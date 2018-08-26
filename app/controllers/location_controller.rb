class LocationController < ApplicationController
  before_action :authenticate_user!
  def create
    if current_user.update_attributes(create_params)
    end
  end

  private
  def create_params
    params.permit(:latitude, :longitude)
  end
end
