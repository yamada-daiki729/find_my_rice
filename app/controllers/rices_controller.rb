class RicesController < ApplicationController

  def rice_map
    @search_rices_form = SearchRicesForm.new(search_params)
    @rices = @search_rices_form.search
    @status_category = [['硬めで甘い',1], ['硬めであっさり',2],['柔らかくて甘い',3],['柔らかくてあっさり',4]]
  end

  def show
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
    @rice = Rice.find(params[:id]) #あとでprivateに出す
  end

  def rice_map_serch #rice_mapから送られてきたリクエストに対して送り返すメソッド
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
