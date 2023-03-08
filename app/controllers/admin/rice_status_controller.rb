class Admin::RiceStatusController < Admin::BaseController

  def update
    @rice_status = RiceStatus.find_by(rice_id:params[:id])
    if @rice_status.update(rice_status_params)
      redirect_to edit_admin_rice_path
    else
      flash.now[:danger] =  'データ更新に失敗しました'
      render :edit
    end
  end

  private

  def rice_status_params
    params.require(:rice_status).permit(:hardness, :softness, :sweetness, :freshness)
  end

end
