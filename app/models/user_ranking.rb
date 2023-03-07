class UserRanking < ApplicationRecord
  belongs_to :user
  belongs_to :rice

  validates :rank, uniqueness: { scope: [:user_id, :rice_id] }
  validates :rank, uniqueness: { scope: :user_id }
  validates :user_id, uniqueness: { scope: :rice_id }

  def self.rice_ranking_top7
    rice_points = {}
    all.each do | a | #ユーザーランキング全てを取り出しrice_pointsにrice_idと点数をhashで挿入する
      case a.rank
      when 1 then
        if rice_points[a.rice_id]
          rice_points.store(a.rice_id, rice_points[a.rice_id] + 3 )
        else
          rice_points.store(a.rice_id, 3 )
        end
      when 2 then
        if rice_points[a.rice_id]
          rice_points.store(a.rice_id, rice_points[a.rice_id] + 2 )
        else
          rice_points.store(a.rice_id, 2 )
        end
      when 3 then
        if rice_points[a.rice_id]
          rice_points.store(a.rice_id, rice_points[a.rice_id] + 1 )
        else
          rice_points.store(a.rice_id, 1 )
        end
      end
    end
    rice_ranking_7ids = Hash[*rice_points.sort_by{ | k, v | v }.reverse.flatten].keys.first(7) #作ったハッシュを点数順に並べrice_idだけ7つ配列に治す
    ranking_rice_data =[]
    rice_ranking_7ids.each do | id | #rice_ranking_7idsのidでライスデータを引っ張り出し@ranking_dataに入れる。
      ranking_rice_data.push(Rice.find(id))
    end
    return ranking_rice_data
  end

end
