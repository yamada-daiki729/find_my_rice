class Admin::RicesController < Admin::BaseController

  def index
    @rices = Rice.includes(:prefectures, :rice_status)
    byebug
  end
end
