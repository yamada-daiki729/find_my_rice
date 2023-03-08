class Admin::RicePrefecturesController < Admin::BaseController
  def destroy
    @rice_prefectures = RicePrefecture.find(params[:id])
    byebug
    @rice_prefectures.destroy!
    redirect_to admin_rices_path, success: "#{@rice_prefectures.rice.name}の#{@rice_prefectures.prefecture.name}登録を削除しました"
  end
end
