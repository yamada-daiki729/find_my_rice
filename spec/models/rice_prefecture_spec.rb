require 'rails_helper'

RSpec.describe RicePrefecture, type: :model do
  before do
    @prefecture = Prefecture.create(name: 1)
    @rice = Rice.create(name:"お米1", characteristic:"お米の特徴")
  end
  it 'Prefecture_riceデータが作成できる' do
    rice_prefecture = RicePrefecture.new(prefecture_id:@prefecture.id, rice_id:@rice.id)
    expect(rice_prefecture).to be_valid
  end

  it 'Riceに対して複数のPrefectureを登録できる' do
    prefecture2 = Prefecture.create(name: 2)
    rice_prefecture = RicePrefecture.create(prefecture_id:@prefecture.id, rice_id:@rice.id)
    rice_prefecture2 = RicePrefecture.create(prefecture_id:prefecture2.id, rice_id:@rice.id)
    expect(@rice.rice_prefectures.count).to eq(2)
  end
end
