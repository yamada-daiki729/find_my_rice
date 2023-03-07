class Admin::UserSessionsController < Admin::BaseController
  # skip_before_action :require_login, only: %i[new create]
  # skip_before_action :check_admin, only: %i[new create]
  layout 'admin_login'
  #ログインフォームのレイアウトをlayouts/admin__loginにするために宣言した。

  def new; end

  def create
    @user = login(params[:email],params[:password])
    if @user
      redirect_to admin_root_path, success: 'ログイン成功しました'
    else
      flash.now[:danger] = 'ログイン失敗しました'
      render :new
    end
  end

  def destroy
    logout
    redirect_to admin_login_path, success: 'ログアウトしました'
  end
end
