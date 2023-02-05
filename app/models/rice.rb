class Rice < ApplicationRecord
  has_many :rice_prefectures
  has_many :prefectures, through: :rice_prefectures
  has_one :rice_status

  scope :search_name, ->(name) { where('rice.name LIKE ?', "%#{name}%") }
  scope :search_prefecture, ->(prefecture_id) { joins(:prefectures).where(prefectures:{id: prefecture_id})}
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

end
