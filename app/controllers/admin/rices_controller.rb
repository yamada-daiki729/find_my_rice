class Admin::RicesController < Admin::BaseController



  def index
    @rices = Rice.includes(:prefectures, :rice_status).order("id")
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

  def destroy
    rice = Rice.find(params[:id])
    rice.destroy!
    redirect_back_or_to(admin_rices_path, success: "#{rice.name}を削除しました")
  end

  private

  def rice_params
    params.require(:rice).permit(:name, :characteristic)
  end



end
