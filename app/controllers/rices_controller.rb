class RicesController < ApplicationController
  def rice_map
    @rices=Rice.all
  end

  def show
    @rice = Rice.find(params[:id])
  end
end
