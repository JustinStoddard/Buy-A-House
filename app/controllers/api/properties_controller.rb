class Api::PropertiesController < ApplicationController
 before_action :authenticate_user!

  def index
    render json: Property.available
  end

  
end
