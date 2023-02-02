class RicesController < ApplicationController
  def rice_map
    @rices = Rice.all
    @prefectures = Prefecture.all
    @rice_prefectures = RicePrefecture.all
  end

  def show
    @rice = Rice.find(params[:id])
  end
end
