class FavoritesController < ApplicationController
  before_action :set_rice
  # before_action :authenticate_user!

  def create
    @favorite = RiceFavorite.create!(user_id: current_user.id, rice_id: @rice.id)
    # ログインしていない場合のif文は必要？
  end

  def destroy
    @favorite = RiceFavorite.find_by(user_id: current_user.id, rice_id: @rice.id)
    @favorite.destroy!
  end

  private

  def set_rice
    @rice = Rice.find(params[:rice_id])
  end
end
