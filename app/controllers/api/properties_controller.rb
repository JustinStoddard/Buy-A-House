class Api::PropertiesController < ApplicationController
 before_action :set_page

  def index
    propertires =Property.page(@page).available
    total_pages = properties.total_pages
    render json: {
      properties: properties,
      total_apges: total_pages,
    }
  end

private
  def set_page
    @page = params[:page] || 1
  end

end
