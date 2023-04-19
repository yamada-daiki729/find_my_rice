require 'rails_helper'

RSpec.describe "Rice", type: :request do
  describe "GET /rices" do
    it "全国お米地図が表示される" do
      # リクエストを送信
      get "/rices"
      # ステータスコードが200であることを確認
      expect(response).to have_http_status(200)
    end
  end
end
