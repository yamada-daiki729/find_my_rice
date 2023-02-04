class RicesController < ApplicationController
  before_action :set_q, only: [:rice_map]

  def rice_map
    @q = Rice.ransack(params[:q])
    @rices = @q.result(distinct:true).includes(:prefectures).all
    # byebug
  end

  def show
    @rice = Rice.find(params[:id]) #あとでprivateに出す
  end

  def rice_map_serch
    @map_serch_rices = Rice.includes(:prefectures).where(rice_prefectures:{prefecture_id: params[:prefectureId].to_i})
    respond_to do |format|
      format.html { redirect_to :root }
      # ↓検索結果のデータをレスポンスするコード
      format.json { render json: @map_serch_rices }
    end
  end

  def search
    @results = @q.result
  end

  private

  def set_q
    @q = Rice.ransack(params[:q])
    byebug
  end


end
