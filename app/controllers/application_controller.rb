# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :require_login

    private

  def not_authenticated
    flash[:danger] = 'ユーザーログインをしてください'
    redirect_to login_path
  end
end
