class RicesController < ApplicationController
  skip_before_action :require_login, only: %i[rice_map show rice_map_serch search_params]

  def rice_map
    @search_rices_form = SearchRicesForm.new(search_params)
    @rices = @search_rices_form.search.order(:name)
    @status_category = RiceStatus.categories
  end

  def show
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
    @rice = Rice.find(params[:id]) #あとでprivateに出す
  end

  def rice_map_search #rice_mapから送られてきたリクエストに対して送り返すメソッド
    @map_serch_rices = Rice.includes(:prefectures).where(rice_prefectures:{prefecture_id: params[:prefectureId].to_i})
    respond_to do |format|
      format.html { redirect_to :root }
      # ↓検索結果のデータをレスポンスするコード
      format.json { render json: @map_serch_rices }
    end
  end

  private

  def search_params
    params[:q]&.permit(:name, :rice_prefecture, :status_category)
  end

end
