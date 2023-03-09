class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end

  def destroy
    @user= User.find(params[:id])
    @user.destroy!
    redirect_back_or_to(admin_users_path, danger: 'ログアウトしました')
  end
end
