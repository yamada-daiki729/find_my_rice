class User < ApplicationRecord
  authenticates_with_sorcery!

  enum role: { general: 0, admin: 1 }

  has_many :rice_favorites, dependent: :destroy
  has_many :user_rankings, dependent: :destroy

  validates :name, presence: true, length: { maximum: 25 }
  validates :email, uniqueness: true, length: { maximum: 150}
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  def user_ranking_save(user_ranking)
    if  UserRanking.find_by(user_id:self.id, rank:1)
      self.user_rankings.update(rank: 1, rice_id: user_ranking[:rank_1].to_i )
    else
      self.user_rankings.create(rank: 1, rice_id: user_ranking[:rank_1].to_i )
    end

    if  UserRanking.find_by(user_id:self.id, rank:2)
      self.user_rankings.update(rank: 2, rice_id: user_ranking[:rank_2].to_i )
    else
      self.user_rankings.create(rank: 2, rice_id: user_ranking[:rank_2].to_i )
    end

    if  UserRanking.find_by(user_id:self.id, rank:3)
      self.user_rankings.update(rank: 3, rice_id: user_ranking[:rank_3].to_i )
    else
      self.user_rankings.create(rank: 3, rice_id: user_ranking[:rank_3].to_i )
    end
  end

  def myranking_rice_rank(rank)#userのお米マイランキングのランクごとに情報を取ってくるメソッド
    if self.user_rankings.find_by(rank:rank)
      return self.user_rankings.find_by(rank:rank).rice_id
    else
      return 0
    end
  end

end
