# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(current_user.id)

    favorites = RiceFavorite.where(user_id: current_user.id).pluck(:rice_id)
    @favorite_list = Rice.find(favorites)
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_back_or_to(users_path, success: 'マイページを更新しました')
    else
      flash.now[:danger] = 'マイページ更新に失敗しました'
      render :edit
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, notice: 'ユーザーの作成に成功しました'
    else
      flash.now[:alert] = 'ユーザー作成に失敗しました'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
