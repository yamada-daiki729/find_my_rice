# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

47.times do |n|
  Prefecture.create!(
    name: n + 1
  )
end

Rice.create!(
  [
    { name: 'コシヒカリ', characteristic: 'コシがあって粘りがつよい' },
    { name: 'あきたこまち', characteristic: 'あきたの代表銘柄' },
    { name: 'ふさおとめ', characteristic: 'さっぱり系の千葉のお米' },
  ]
)

RicePrefecture.create!(
  [
    { rice_id: 2, prefecture_id: 5 },
    { rice_id: 1, prefecture_id: 15 },
    { rice_id: 2, prefecture_id: 8 }
  ]
)

RiceStatus.create!(
  [
    { rice_id: 1 , hardness: 0, softness: 3, sweetness: 3, freshness:0},
    { rice_id: 2 , hardness: 0, softness: 1, sweetness: 0, freshness:2}
  ]
)
