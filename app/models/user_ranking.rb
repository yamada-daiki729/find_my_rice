class UserRanking < ApplicationRecord
  belongs_to :user
  belongs_to :rice

  validates :rank, uniqueness: { scope: [:user_id, :rice_id] }
  validates :rank, uniqueness: { scope: :user_id }

end
