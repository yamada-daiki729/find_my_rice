class RiceStatus < ApplicationRecord
  belongs_to :rice

  def self.categories
    [['硬めで甘い',1], ['硬めであっさり',2],['柔らかくて甘い',3],['柔らかくてあっさり',4]]
  end
end
