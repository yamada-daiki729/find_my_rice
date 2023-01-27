class Rice < ApplicationRecord
  has_many :rice_prefectures
  has_many :prefectures, through: :rice_prefectures
  has_one :rice_status
end
