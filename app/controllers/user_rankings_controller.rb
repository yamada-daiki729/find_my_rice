class UserRankingsController < ApplicationController

  def index
    @ranking_data = UserRanking.rice_ranking_top7
  end

  def destroy
    @user_ranking = current_user.user_rankings.find_by(rank: params[:rank])
    @user_ranking.destroy!
    redirect_back_or_to(users_path, success: '米(まい)ランキングを削除しました')
  end
end
