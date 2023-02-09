class RiceFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :rice

  validates_uniqueness_of :rice_id, scope: :user_id
end
