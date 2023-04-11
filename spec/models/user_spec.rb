require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user1 = User.new(
    name: "User1",
    email: "testman@example.com",
    password: "password",
    password_confirmation:"password",
    )
  end
  it 'ユーザーが作成されている' do
    expect(@user1).to be_valid
  end

  describe 'バリデーション' do
    it 'ユーザー名がnilの時バリデーションで弾かれる' do
      @user1.name = nil
      @user1.valid?
      expect(@user1.errors.full_messages).to include("Nameを入力してください")
    end

    it 'ユーザー名が25文字以上の時バリデーションで弾かれる' do
      @user1.name = ('a'..'z').to_a.shuffle[0,26].join
      @user1.valid?
      expect(@user1.errors.full_messages).to include("Nameは25文字以内で入力してください")
    end


    it 'emailがnil時バリデーションで弾かれる' do
      @user1.email = nil
      @user1.valid?
      expect(@user1.errors.full_messages).to include("Eメールを入力してください")
    end

    it 'emailが150文字以上の時バリデーションで弾かれる' do
      @user1.email = (('0'..'9').to_a*15).push("1").join
      @user1.valid?
      expect(@user1.errors.full_messages).to include("Eメールは150文字以内で入力してください")
    end

    it 'emailが重複した時にバリデーションで弾かれる' do
      @user1.save
      user2 = User.new(
        name: "User2",
        email: "testman@example.com",
        password: "password",
        password_confirmation:"password"
      )
      user2.valid?
      expect(user2.errors.full_messages).to include("Eメールはすでに存在します")
    end

    it 'passwordが3文字未満の時バリデーションで弾かれる' do
      @user1.password = "tt"
      @user1.password_confirmation = "tt"
      @user1.valid?
      expect(@user1.errors.full_messages).to include("パスワードは3文字以上で入力してください")
    end

    it 'password_confirmationが間違えた時バリデーションで弾かれる' do
      @user1.password = "test"
      @user1.password_confirmation = "test1"
      @user1.valid?
      expect(@user1.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
    end

    it 'password_confirmationがnilの時バリデーションで弾かれる' do
      @user1.password = "test"
      @user1.password_confirmation = nil
      @user1.valid?
      byebug
      expect(@user1.errors.full_messages).to include("パスワード（確認用）を入力してください")
    end
  end
end
