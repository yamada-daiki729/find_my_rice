class Admin::RicesController < Admin::BaseController

  def new
    @rice = Rice.new
  end

  def create
    @rice = Rice.new(rice_params)
    if @rice.save
      @rice.create_rice_status!(rice_status_params)
      redirect_to admin_rices_path, success: 'お米を作成しました'
    else
      flash.now[:danger] = 'お米作成に失敗しました'
    end
  end

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

  def rice_status_params
    params.require(:rice).permit(:hardness, :softness, :sweetness, :freshness)
  end

  def rice_params
    params.require(:rice).permit(:name, :characteristic)
  end

end
