class Admin::UsersController < Admin::BaseController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, success: 'ユーザーを作成しました'
    else
      flash.now[:danger] = 'ユーザー作成に失敗しました'
    end
  end

  def index
    @users = User.all.order("id")
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_users_path, success: 'ユーザー情報を更新しました'
    else
      flash.now[:danger] = "更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @user= User.find(params[:id])
    @user.destroy!
    redirect_back_or_to(admin_users_path, danger: 'ログアウトしました')
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :role, :password, :password_confirmation)
  end
end
