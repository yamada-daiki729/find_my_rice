require 'rails_helper'

RSpec.describe Rice, type: :model do
  before do
    @rice = Rice.new(
    name: "Rice1",
    characteristic: "お米の特徴だよ"
    )
  end

  it 'お米データが作成されている' do
    expect(@rice).to be_valid
  end

  describe 'バリデーション' do
    it 'nameがnil時バリデーションで弾かれる' do
      @rice.name = nil
      @rice.valid?
      expect(@rice.errors.full_messages).to include("Nameを入力してください")
    end

    it 'お米の特徴が200文字以上の時バリデーションで弾かれる' do
      @rice.characteristic = (('0'..'9').to_a*20).push("1").join
      @rice.valid?
      expect(@rice.errors.full_messages).to include("Characteristicは200文字以内で入力してください")
    end
  end
end
