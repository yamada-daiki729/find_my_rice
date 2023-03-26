class UserRankingsController < ApplicationController

  skip_before_action :require_login, only: %i[index]

  def index
    @ranking_data = UserRanking.rice_ranking_top7
  end

  def create
    if current_user.user_rankings.find_by(rank: params[:rank].to_i)
      current_user.user_rankings.update(rank: params[:rank].to_i, rice_id: params[:rice].to_i)
    else
      current_user.user_rankings.create(rank: params[:rank].to_i, rice_id: params[:rice].to_i)
    end
    redirect_back_or_to(rice_path(params[:rice]), success: '私の米（まい）ランキングに登録しました')
  end

  def destroy
    @user_ranking = current_user.user_rankings.find_by(rank: params[:rank])
    @user_ranking.destroy!
    redirect_back_or_to(users_path, success: '米(まい)ランキングを削除しました')
  end
end
