require 'rails_helper'

RSpec.describe RiceFavorite, type: :model do
  before do
    @user = User.create(
    name: "User1",
    email: "testman@example.com",
    password: "password",
    password_confirmation:"password",
    )
    @rice = Rice.create(name:"お米1", characteristic:"お米の特徴")
  end
  it 'rice_favoriteデータが作成できる' do
    rice_favorite = RiceFavorite.new(user_id:@user.id, rice_id:@rice.id)
    expect(rice_favorite).to be_valid
  end

  it 'userに対して複数のRiceFavoriteを登録できる' do
    rice2 = Rice.create(name: 2)
    rice_favorite = RiceFavorite.create(user_id:@user.id, rice_id:@rice.id)
    rice_favorite2 = RiceFavorite.create(user_id:@user.id, rice_id:rice2.id)
    expect(@user.rice_favorites.count).to eq(2)
  end
end
