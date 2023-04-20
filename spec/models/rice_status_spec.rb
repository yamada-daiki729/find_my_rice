require 'rails_helper'

RSpec.describe RiceStatus, type: :model do
  before do
    @rice = Rice.create(name:"お米1", characteristic:"お米の特徴")
  end
  it 'rice_favoriteデータが作成できる' do
    rice_status = RiceStatus.new(
      rice_id: @rice.id,
      hardness: 0,
      softness: 0,
      sweetness: 0,
      freshness: 0
    )
    expect(rice_status).to be_valid
  end

  it 'お米に対して複数のRiceStatusを登録できない' do
    rice_status = RiceStatus.create(
      rice_id: @rice.id,
      hardness: 0,
      softness: 0,
      sweetness: 0,
      freshness: 0
    )
    rice_status2 = RiceStatus.create(
      rice_id: @rice.id,
      hardness: 2,
      softness: 0,
      sweetness: 3,
      freshness: 0
    )
    rice_status2.valid?
    expect(rice_status2.errors.full_messages).to include("Riceはすでに存在します")
  end
end
