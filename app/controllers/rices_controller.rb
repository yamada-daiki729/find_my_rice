class RicesController < ApplicationController
  def rice_map
    @rices = Rice.all
    @prefectures = Prefecture.all
    @rice_prefectures = RicePrefecture.all
  end

  def show
    @rice = Rice.find(params[:id])
  end

  def rice_map_serch
    @map_serch_rices = Rice.includes(:prefectures).where(rice_prefectures:{prefecture_id: params[:prefectureId].to_i})
    respond_to do |format|
      format.html { redirect_to :root }
      # ↓検索結果のデータをレスポンスするコード
      format.json { render json: @map_serch_rices }
    end
  end

end
