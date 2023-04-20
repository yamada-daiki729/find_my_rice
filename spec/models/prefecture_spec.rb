require 'rails_helper'

RSpec.describe Prefecture, type: :model do
  before do
    @prefecture1 = Prefecture.new(name: 1)
  end
  it 'Prefectureデータが作成できる' do
    expect(@prefecture1).to be_valid
  end

  describe '想定しているenumデータが合致している' do

    it 'name 1が北海道になる' do
      @prefecture1.name
      expect(@prefecture1.name).to include("北海道")
    end

    it 'name 13が東京都になる' do
      @prefecture1.name = 13
      expect(@prefecture1.name).to include("東京都")
    end

    it 'name 13が東京都になる' do
      @prefecture1.name = 37
      expect(@prefecture1.name).to include("香川県")
    end
  end
end
