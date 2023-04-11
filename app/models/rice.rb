class Rice < ApplicationRecord
  has_many :rice_prefectures, dependent: :destroy
  has_many :prefectures, through: :rice_prefectures
  has_many :rice_favorites, dependent: :destroy
  has_many :user_rankings, dependent: :destroy
  has_one :rice_status, dependent: :destroy

  validates :name, presence: true
  validates :characteristic, length: { maximum: 200}

  scope :search_name, ->(name) { where('rice.name LIKE ?', "%#{name}%") }
  scope :search_prefecture, ->(prefecture_id) { joins(:prefectures).where(prefectures:{id: prefecture_id})}
  #カテゴリー検索のステータスカテゴリ別にSQLを分岐しているスコープ
  scope :status_categorise, ->(category_num) {
      if category_num == 1
        joins(:rice_status).where('rice_statuses.hardness > 0 and rice_statuses.sweetness > 0')
      elsif category_num == 2
        joins(:rice_status).where('rice_statuses.hardness > 0 and rice_statuses.freshness > 0')
      elsif category_num == 3
        joins(:rice_status).where('rice_statuses.softness > 0 and rice_statuses.sweetness > 0')
      elsif category_num == 4
        joins(:rice_status).where('rice_statuses.softness > 0 and rice_statuses.freshness > 0')
      end
    }

    def favorite_by?(user) #お気に入りされているか確認するメソッド
      rice_favorites.where(user_id: user).exists?
    end

    def status_position # ライスのステータスポジションのロジック
      side_position = if self.rice_status.softness > 0
                      50 + (self.rice_status.softness * 5)
                    elsif self.rice_status.hardness > 0
                      50 - (self.rice_status.hardness * 5)
                    end

      top_position =if self.rice_status.freshness > 0
                      50 + (self.rice_status.freshness * 5)
                    elsif self.rice_status.sweetness > 0
                        50 - (self.rice_status.sweetness * 5)
                    end

      status_position = "top:#{top_position}%;left:#{side_position}%"
      return status_position
    end
end
