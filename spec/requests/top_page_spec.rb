require 'rails_helper'

RSpec.describe "TopPage", type: :request do
  describe "GET /" do
    it "トップページが表示される" do
      # リクエストを送信
      get root_path
      # ステータスコードが200であることを確認
      expect(response).to have_http_status(200)
    end
  end
end
