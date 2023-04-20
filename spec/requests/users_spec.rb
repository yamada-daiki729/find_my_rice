require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /users/new" do
    it "ユーザー作成画面" do
      # リクエストを送信
      get "/users/new"

      # ステータスコードが200であることを確認
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /users" do
    let(:valid_attributes) do
      {name:"A", email: "test@example.com", password: "password123", password_confirmation: "password123" }
    end

    context "バリデーションに弾かれないリクエストが" do
      it "ユーザー作成が成功しステータスコード201が返ってくること" do
        before_user_count = User.all.count
        post "/users", params: { user: valid_attributes }
        after_user_count = User.all.count

        # ユーザーのカウントが増えているか
        expect(after_user_count).to eq(before_user_count + 1)
        # ステータスコードが302であること
        expect(response).to have_http_status(302)
        # リダイレクト先がログインパスになっているか
        expect(response).to redirect_to(login_path)
      end
    end
  end

  describe "GET /users" do
    it "ユーザー詳細画面" do
      user = User.create(
        name:"test",
        email:"test@example.com",
        password:"password",
        password_confirmation:"password"
      )
      login(user)
      # リクエストを送信
      get "/users"

      # ステータスコードが200であることを確認
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /users/edit" do
    it "ユーザー編集画面" do
      user = User.create(
        name:"test",
        email:"test@example.com",
        password:"password",
        password_confirmation:"password"
      )
      login(user)
      # リクエストを送信
      get "/users/edit"

      # ステータスコードが200であることを確認
      expect(response).to have_http_status(200)
    end
  end
end
