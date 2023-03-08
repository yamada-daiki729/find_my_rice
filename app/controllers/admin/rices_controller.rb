class Admin::RicesController < Admin::BaseController



  def index
    @rices = Rice.includes(:prefectures, :rice_status).order("id")
    byebug
  end

  def show
    @rice = Rice.includes(:prefectures, :rice_status).find(params[:id])
  end

  def edit
    @rice = Rice.find(params[:id])
    @rice_status = RiceStatus.find_by(rice_id: params[:id])
  end

  def update
    @rice = Rice.find(params[:id])
    if @rice.update(rice_params)
      redirect_to admin_rices_path
    else
      flash.now[:danger] =  'データ更新に失敗しました'
      render :edit
    end
  end

  private

  def rice_status_params
    params.require(:rice_status).permit(:hardness, :softness, :sweetness, :freshness)
  end

  def rice_params
    params.require(:rice).permit(:name, :characteristic)
  end



end
