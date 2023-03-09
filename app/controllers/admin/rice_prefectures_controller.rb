class Admin::RicePrefecturesController < Admin::BaseController

  def create
    @rice = Rice.find(params[:id])
    rice_prefecture = @rice.rice_prefectures.build(prefecture_id: prefecture_params[:prefecture].to_i)
    if rice_prefecture.save
      redirect_to admin_rice_path(@rice), success: '都道府県の登録に成功しました'
    else
      flash.now[:danger] = '都道府県の登録に失敗しました'
      render "rices/edit"
    end
  end

  def destroy
    @rice_prefectures = RicePrefecture.find(params[:id])
    @rice_prefectures.destroy!
    redirect_to admin_rices_path, success: "#{@rice_prefectures.rice.name}の#{@rice_prefectures.prefecture.name}登録を削除しました"
  end

  private

  def prefecture_params
    params.permit(:prefecture)
  end
end
