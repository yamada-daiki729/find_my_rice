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

    def status_position
      side_position = if self.rice_status.softness > 0
                      50 + (self.rice_status.softness * 10)
                    elsif self.rice_status.hardness > 0
                      50 - (self.rice_status.hardness * 10)
                    end

      top_position =if self.rice_status.freshness > 0
                      50 + (self.rice_status.freshness * 10)
                    elsif self.rice_status.sweetness > 0
                        50 - (self.rice_status.sweetness * 10)
                    end

      status_position = "top:#{top_position}%;left:#{side_position}%"
      return status_position
    end
end
