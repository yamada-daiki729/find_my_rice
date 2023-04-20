require 'rails_helper'

RSpec.describe "UserRankings", type: :request do
  describe "GET /index" do
    it "お米総選挙画面" do
      # リクエストを送信
      get "/rice_ranking"
      # ステータスコードが200であることを確認
      expect(response).to have_http_status(200)
    end
  end
end
