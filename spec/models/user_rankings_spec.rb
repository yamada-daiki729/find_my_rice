require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(
    name: "User1",
    email: "testman@example.com",
    password: "password",
    password_confirmation:"password",
    )

    @user2 = User.create(
      name: "User2",
    email: "testman2@example.com",
    password: "password",
    password_confirmation:"password",
    )

    @rice = Rice.create(name:1)
    @rice2 = Rice.create(name:2)
  end
  it 'ユーザーランキングが作成されている' do
    user_ranking = UserRanking.new(user_id: @user.id, rice_id:@rice.id, rank:1)
    expect(user_ranking).to be_valid
  end

  describe 'バリデーション' do
    it 'rankがnilの時バリデーションで弾かれる' do
    user_ranking = UserRanking.new(user_id: @user.id, rice_id:@rice.id, rank:nil)
      user_ranking.valid?
      expect(user_ranking.errors.full_messages).to include("Rankを入力してください")
    end

    it 'rice_idがnilの時バリデーションで弾かれる' do
    user_ranking = UserRanking.new(user_id: @user.id, rice_id:nil, rank:1)
      user_ranking.valid?
      expect(user_ranking.errors.full_messages).to include("Riceを入力してください")
    end

    it 'rankがnilの時バリデーションで弾かれる' do
    user_ranking = UserRanking.new(user_id: nil, rice_id:@rice.id, rank:1)
      user_ranking.valid?
      expect(user_ranking.errors.full_messages).to include("Userを入力してください")
    end

    it '1人のユーザーが同じお米をrank1とrank2に登録しようとした時バリデーションで弾かれる' do
      user_ranking = UserRanking.create(user_id: @user.id, rice_id:@rice.id, rank:1)
      user_ranking2 = UserRanking.create(user_id: @user.id, rice_id:@rice.id, rank:2)
      user_ranking.valid?
      expect(user_ranking2.errors.full_messages).to include("Riceが既に登録されています")
    end

    it '1人のユーザーがrank1に複数のお米を登録しようとした時バリデーションで弾かれる' do
      user_ranking = UserRanking.create(user_id: @user.id, rice_id:@rice.id, rank:1)
      user_ranking2 = UserRanking.create(user_id: @user.id, rice_id:@rice2.id, rank:1)
      user_ranking.valid?
      expect(user_ranking2.errors.full_messages).to include("Rankが既に登録されています")
    end
  end
end
