# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 都道府県データ
47.times do |n|
  Prefecture.create!(
    name: n + 1
  )
end

#お米データ
Rice.create!(
  [
    { name: 'ななつぼし', characteristic: '北海道で作付け面積が一位の品種。冷めてからも美味しいという特徴がある。' }, #1
    { name: 'ゆめぴりか', characteristic: '甘味が強くもちもちが特徴。お米をだけでも味がしっかりしている' }, #2
    { name: 'ふっくりんこ', characteristic: 'ふっくらした食感が特徴で和食や魚介系との相性が抜群。' }, #3
    { name: 'まっしぐら', characteristic: '比較的粒が大きくしっかりとし、あっさりとした食味が特徴' }, #4
    { name: 'つがるロマン', characteristic: 'あきたこまちを親にもち、ふっくらとやわらかい口当たりが特徴。バランスが良く、やさしい味わい。' },#5
    { name: '青天の霹靂', characteristic: '粘りとキレのバランス、上品な甘みが特徴ほどよいツヤとやわらかな白さがあり、粒はやや大きめの、しっかりとしたお米です。' }, #6
    { name: 'あきたこまち', characteristic: 'ツヤツヤと輝く透明感があり、香りに優れ、安定した品質が魅力。' }, #7
    { name: 'ひとめぼれ', characteristic: 'コシヒカリと初星から生まれたお米味とかおりが良く、ねばりの強いお米' }, #8
    { name: 'ゆめおばこ', characteristic: '形よく均等・大粒で、食欲が出るツヤと白さがあり、適度な粘りと弾力があるふっくらとした食感が特徴' }, #9
    { name: 'サキホコレ', characteristic: 'ふっくらとした粒立ちと噛むほどに広がる甘い風味が特徴。秋田の新品種' }, #10
    { name: 'いわてっこ', characteristic: 'どんな料理にでもあう。お米で冷めても美味しいので弁当にもよく合う' }, #11
    { name: '銀河のすずく', characteristic: '食べ飽きないさっぱりとした食味。冷めてもおいしさが変わらない' }, #12
    { name: 'つや姫', characteristic: '甘みや旨みはもちろん、口当たりや粘り気などの米の味としてバランスが良い点が特徴。デビュー以来、毎年食味ランキング特Aを取得している' }, #13
    { name: 'ササニシキ', characteristic: 'さっぱりとした味わいと、粘りの少ないすっきりとした上品に味わい。' }, #14
    { name: 'はえぬき', characteristic: '冷めても美味しく、コンビニエンスストアのおにぎりにも使用されている品種。' }, #15
    { name: '雪若丸', characteristic: 'しっかりとした粒感と適度な粘りが両立した“新食感' }, #16
    { name: 'こしひかり', characteristic: 'トップブランドとして長年支持されている、日本を代表するお米です。 コシがありもっちりとした粘り気と強い旨み。' }, #17
    { name: '天のつぶ', characteristic: 'しっかりとした硬めの食感が特徴です。粘りが少ないのでべチャっとしにくく、炒飯や丼ものにぴったり。' }, #18
    { name: '里山のつぶ', characteristic: '食べたときにしっかりした歯ごたえと、適度な粘りが感じられる、「あきたこまち」並の良食味品種です' }, #19
    { name: 'あさひの夢', characteristic: ' やや大粒で、粘り気がそこまで強くないため口当たりもよくさっぱりした味。' }, #20
    { name: 'とちぎの星', characteristic: '大粒で豊かな甘さがあり、炊飯後も粒がしっかりしている。' }, #21
    { name: 'なすひかり', characteristic: '食味がよく、お米の粒が大きいのでしっかりとした味わいが特徴。' }, #22
    # { name: 'あさひの夢', characteristic: 'やや大粒で、粘り気がそこまで強くないため口当たりもよくさっぱり味です。' }, #23 20番とかぶっていたので削除
    { name: 'ゴロピカリ', characteristic: '粒厚が薄くて丸みがある形.コシヒカリと月の光から生まれたお米' }, #24
    { name: '彩のきずな', characteristic: 'さっぱりとした味わいとしっかりとした食感が特徴' }, #25
    { name: '彩のかがやき', characteristic: '少し粒が小ぶりでさっぱりしている味わいが特徴。' }, #26
    { name: '大地の風', characteristic: '大粒でふっくらし粒立ちがいいのが特徴' }, #27
    { name: 'ふさこがね', characteristic: 'もっちりとした食感と、粒が大きくふっくらした炊きあがりが特徴。冷めても硬くなりにくい。' }, #28
    { name: 'ふさおとめ', characteristic: '粒が大きく、ふっくらとしていて白くつやがあり、見た目が美しいお米' }, #29
    { name: 'はるみ', characteristic: '粒が大きくふくらみがいいさわやかな甘さが特徴' }, #30
    { name: 'こしいぶき', characteristic: 'コシヒカリのおいしさを受け継いだ味や香り、つや、粘りが特徴。コシヒカリよりもあっさりしている' }, #31
    { name: '新之助', characteristic: '大粒できれいなツヤがあり、ほんのりとした香り、豊潤な甘みとコク、しっかりした粘りと弾力が特徴' }, #32
    { name: '富富富', characteristic: '粒ぞろいが良く、つややかで透明感のあるお米' }, #33
    # { name: 'きぬむすめ', characteristic: '"とても白く艷やかな炊きあがり、粘りが強く、やや柔らかめの食感"' }, #34 45番とかぶっていたので削除
    { name: 'にこまる', characteristic: '粒ぞろいが良く、炊きあがりはふっくらつやつやで、もちもちの食感が特徴' }, #35
    { name: 'みねあさひ', characteristic: '米粒はやや小粒ですが、まるまるとし、光沢がある' }, #36
    { name: 'あいちのかおり', characteristic: 'ミネノアサヒから受け継いだ粘りを持ち、あっさりとした口当たりでくせが少なく、存在感があって食べごたえのある。' }, #37
    { name: 'ハツシモ', characteristic: '粒が大きくて噛みごたえ・食べごたえがある、吸水性が低いため寿司米にも適している。' }, #38
    { name: 'ゆめみずほ', characteristic: '大粒でしっかりとした歯ごたえがあり、さっぱりとした味わい冷めても味が変わらないので、お弁当やおにぎりにぴったり' }, #39
    { name: 'ハナエチゼン', characteristic: 'あっさりさっぱりとしていて、少し硬めのお米なのでお寿司に使われることが多い' }, #40

    { name: 'いちほまれ', characteristic: '柔らかい中にもしっかりとした弾力があり、噛むと優しい甘さが広がる、絹のような白さと艶も特徴。' }, #41
    { name: 'みずかがみ', characteristic: '炊きたてだけでなく冷めてもふっくらとして、やわらかでやさしい甘みが特徴的なお米' }, #42
    { name: 'キヌヒカリ', characteristic: 'コシヒカリよりあっさりとした口当たりで、適度な粘りと冷めると甘みが増すというのが特徴' }, #43
    { name: 'ひのひかり', characteristic: 'コシヒカリに比べて味わいがあっさりしていて味がそれほど濃くないため、どんな料理とも相性が良い品種' }, #44
    { name: 'きぬむすめ', characteristic: '中粒で白く艶やかな炊き上がり。コシヒカリと比較すると、あっさりとしていて飽きのこない味が特徴的' }, #45
    { name: '星空舞', characteristic: '炊いたご飯のツヤや光沢が特に優れ、美味しさの指標である「味度値」が非常に高いのが特徴' }, #46
    { name: 'あきさかり', characteristic: '粒が大きめでもっちりと粘りのある食感に、あっさりとした甘味が特徴' }, #47
    { name: 'あきろまん', characteristic: 'さっぱりとした口あたりに適度な歯ごたえで、ほどよい粘りがある。冷めても味わいが良く弁当やおにぎりにもよく合うお米。' }, #48
    { name: '恋の予感', characteristic: 'しっかり噛みしめるほどの硬さと弾力とあっさりした味わい' }, #49
    { name: 'おいでまい', characteristic: 'あっさりさっぱりとしていて、少し硬めのお米なのでお寿司に使われることが多い' }, #50

    { name: '夢つくし', characteristic: 'つややかな光沢ともちもちとした食感が特徴。味はあっさりしている。' }, #51
    { name: '元気つくし', characteristic: 'ごはん粒がしっかり、ふっくらと炊きあがり、もちもち感があります。' }, #52
    { name: 'おてんとそだち', characteristic: 'ヒノヒカリの後継種として宮崎県で作られたお米' }, #53
    { name: '森のくまさん', characteristic: '米粒の見た目がやや細めであるのが特徴。米粒に弾力がしっかりとあり、モチモチの食感。' }, #54
    { name: 'くまさんの輝き', characteristic: '粒は長円形。炊き上がりにツヤがあり、柔らかめで粘りが強いのが特徴です' }, #55
    { name: 'あきほなみ', characteristic: '粒が大きくツヤ・甘みがあり冷めても粘り過ぎたりパサついたりしないお米です' }, #56
    { name: 'イクヒカリ', characteristic: 'コシヒカリに比べてアミロースやタンパク質の含有量が少ない分、よりふっくらとした炊きあがりになり、冷めた時もパサつき感は少なく粘りも強く残る。' }, #57
    { name: '夢しずく', characteristic: '炊きあがりは柔らかでふっくらとしており、つやと粘り気があるので和食にぴったりのお米' }, #58
    { name: 'さがびより', characteristic: '粒が大きく、しっかりしている。甘み、香りがよい' }, #59
    { name: 'なつほのか', characteristic: '粒ぞろいが良く、やさしい甘み、ほのかな甘い香りと程よい粘り' } #60

  ]
)

#お米と都道府県の中間データ
RicePrefecture.create!(
  [
    { prefecture_id: 1, rice_id: 1 },
    { prefecture_id: 1, rice_id: 2 },
    { prefecture_id: 1, rice_id: 3 },
    { prefecture_id: 2, rice_id: 4 },
    { prefecture_id: 2, rice_id: 5 },
    { prefecture_id: 2, rice_id: 6 },
    { prefecture_id: 5, rice_id: 7 },
    { prefecture_id: 5, rice_id: 8 },
    { prefecture_id: 5, rice_id: 9 },
    { prefecture_id: 5, rice_id: 10 },
    { prefecture_id: 3, rice_id: 8 },
    { prefecture_id: 3, rice_id: 11 },
    { prefecture_id: 3, rice_id: 12 },
    { prefecture_id: 3, rice_id: 7 },
    { prefecture_id: 4, rice_id: 8 },
    { prefecture_id: 4, rice_id: 13 },
    { prefecture_id: 4, rice_id: 14 },
    { prefecture_id: 6, rice_id: 15 },
    { prefecture_id: 6, rice_id: 13 },
    { prefecture_id: 6, rice_id: 16 },
    { prefecture_id: 7, rice_id: 17 },
    { prefecture_id: 7, rice_id: 18 },
    { prefecture_id: 7, rice_id: 19 },
    { prefecture_id: 8, rice_id: 17 },
    { prefecture_id: 8, rice_id: 7 },
    { prefecture_id: 9, rice_id: 20 },
    { prefecture_id: 9, rice_id: 21 },
    { prefecture_id: 9, rice_id: 22 },
    { prefecture_id: 10, rice_id: 20 },#20に変更予定
    { prefecture_id: 10, rice_id: 24 },
    { prefecture_id: 11, rice_id: 25 },
    { prefecture_id: 11, rice_id: 26 },
    { prefecture_id: 11, rice_id: 27 },
    { prefecture_id: 12, rice_id: 28 },
    { prefecture_id: 12, rice_id: 28 },
    { prefecture_id: 19, rice_id: 17 },
    { prefecture_id: 14, rice_id: 30 },
    { prefecture_id: 15, rice_id: 17 },
    { prefecture_id: 15, rice_id: 31 },
    { prefecture_id: 15, rice_id: 32 },
    { prefecture_id: 16, rice_id: 17 },
    { prefecture_id: 16, rice_id: 33 },
    { prefecture_id: 20, rice_id: 17 },
    { prefecture_id: 22, rice_id: 17 },
    # { prefecture_id: 22, rice_id: 34 },かぶっていたので削除
    { prefecture_id: 22, rice_id: 45 }, #新しく作成
    { prefecture_id: 22, rice_id: 35 },
    { prefecture_id: 23, rice_id: 36 },
    { prefecture_id: 23, rice_id: 37 },
    { prefecture_id: 23, rice_id: 17 },
    { prefecture_id: 21, rice_id: 38 },
    { prefecture_id: 21, rice_id: 17 },
    { prefecture_id: 17, rice_id: 39 },
    { prefecture_id: 17, rice_id: 17 },
    { prefecture_id: 18, rice_id: 17 },
    { prefecture_id: 18, rice_id: 40 },

    { prefecture_id: 18, rice_id: 41 },

    { prefecture_id: 25, rice_id: 17 },
    { prefecture_id: 25, rice_id: 42 },

    { prefecture_id: 24, rice_id: 17 },

    { prefecture_id: 26, rice_id: 17 },
    { prefecture_id: 26, rice_id: 43 },
    { prefecture_id: 26, rice_id: 44 },

    { prefecture_id: 18, rice_id: 40 },

    { prefecture_id: 29, rice_id: 44 },

    { prefecture_id: 30, rice_id: 43 },
    { prefecture_id: 30, rice_id: 45 },


    { prefecture_id: 28, rice_id: 17 },
    { prefecture_id: 28, rice_id: 44 },
    { prefecture_id: 28, rice_id: 45 },

    { prefecture_id: 31, rice_id: 17 },
    { prefecture_id: 31, rice_id: 45 },
    { prefecture_id: 31, rice_id: 46 },

    { prefecture_id: 33, rice_id: 17 },
    { prefecture_id: 33, rice_id: 45 },
    { prefecture_id: 33, rice_id: 44 },

    { prefecture_id: 32, rice_id: 17 },
    { prefecture_id: 32, rice_id: 45 },
    { prefecture_id: 32, rice_id: 13 },

    { prefecture_id: 34, rice_id: 17 },
    { prefecture_id: 34, rice_id: 47 },
    { prefecture_id: 34, rice_id: 48 },
    { prefecture_id: 34, rice_id: 49 },

    { prefecture_id: 35, rice_id: 17 },
    { prefecture_id: 35, rice_id: 8 },
    { prefecture_id: 35, rice_id: 45 },

    { prefecture_id: 37, rice_id: 17 },
    { prefecture_id: 37, rice_id: 44 },
    { prefecture_id: 37, rice_id: 50 },

    { prefecture_id: 36, rice_id: 17 },
    { prefecture_id: 36, rice_id: 46 },

    { prefecture_id: 38, rice_id: 17 },
    { prefecture_id: 38, rice_id: 44 },
    { prefecture_id: 38, rice_id: 7 },
    { prefecture_id: 38, rice_id: 35 },

    { prefecture_id: 39, rice_id: 17 },
    { prefecture_id: 39, rice_id: 44 },
    { prefecture_id: 39, rice_id: 35 },


    { prefecture_id: 44, rice_id: 44 },
    { prefecture_id: 44, rice_id: 8 },
    { prefecture_id: 44, rice_id: 13 },

    { prefecture_id: 40, rice_id: 51 },
    { prefecture_id: 40, rice_id: 52 },

    { prefecture_id: 45, rice_id: 44 },
    { prefecture_id: 45, rice_id: 17 },
    { prefecture_id: 45, rice_id: 53 },

    { prefecture_id: 43, rice_id: 44 },
    { prefecture_id: 43, rice_id: 54 },
    { prefecture_id: 43, rice_id: 55 },
    { prefecture_id: 43, rice_id: 17 },

    { prefecture_id: 46, rice_id: 44 },
    { prefecture_id: 46, rice_id: 17 },
    { prefecture_id: 46, rice_id: 56 },
    { prefecture_id: 46, rice_id: 57 },

    { prefecture_id: 41, rice_id: 58 },
    { prefecture_id: 41, rice_id: 59 },
    { prefecture_id: 41, rice_id: 17 },

    { prefecture_id: 42, rice_id: 44 },
    { prefecture_id: 42, rice_id: 35 },
    { prefecture_id: 42, rice_id: 60 }
  ]
)

# お米のステータスデータ
# スタータスのMAX値は8
RiceStatus.create!(
  [
    { rice_id: 1 , hardness: 3, softness: 0, sweetness: 0, freshness:2},
    { rice_id: 2 , hardness: 0, softness: 4, sweetness: 6, freshness:0},
    { rice_id: 3 , hardness: 0, softness: 2, sweetness: 4, freshness:0},
    { rice_id: 4 , hardness: 5, softness: 0, sweetness: 0, freshness:6},
    { rice_id: 5 , hardness: 0, softness: 4, sweetness: 2, freshness:0},
    { rice_id: 6 , hardness: 0, softness: 2, sweetness: 4, freshness:0},
    { rice_id: 7 , hardness: 2, softness: 0, sweetness: 0, freshness:2},
    { rice_id: 8 , hardness: 0, softness: 2, sweetness: 2, freshness:0},
    { rice_id: 9 , hardness: 0, softness: 4, sweetness: 5, freshness:0},
    { rice_id: 10 , hardness: 4, softness: 0, sweetness: 6, freshness:0},
    { rice_id: 11 , hardness: 0, softness: 2, sweetness: 0, freshness:3},
    { rice_id: 12 , hardness: 0, softness: 1, sweetness: 0, freshness:3},
    { rice_id: 13 , hardness: 2, softness: 0, sweetness: 0, freshness:5},
    { rice_id: 14 , hardness: 2, softness: 0, sweetness: 0, freshness:4},
    { rice_id: 15 , hardness: 0, softness: 4, sweetness: 0, freshness:3},
    { rice_id: 16 , hardness: 4, softness: 0, sweetness: 3, freshness:0},
    { rice_id: 17 , hardness: 0, softness: 4, sweetness: 5, freshness:0},
    { rice_id: 18 , hardness: 6, softness: 0, sweetness: 0, freshness:3},
    { rice_id: 19 , hardness: 0, softness: 3, sweetness: 4, freshness:0},
    { rice_id: 20 , hardness: 4, softness: 0, sweetness: 0, freshness:4},
    { rice_id: 21 , hardness: 4, softness: 0, sweetness: 0, freshness:5},
    { rice_id: 22 , hardness: 0, softness: 2, sweetness: 0, freshness:3},
    { rice_id: 23 , hardness: 4, softness: 0, sweetness: 0, freshness:2},#削除予定
    { rice_id: 24 , hardness: 2, softness: 0, sweetness: 0, freshness:4},
    { rice_id: 25 , hardness: 1, softness: 0, sweetness: 0, freshness:1},
    { rice_id: 26 , hardness: 0, softness: 1, sweetness: 0, freshness:3},
    { rice_id: 27 , hardness: 0, softness: 1, sweetness: 0, freshness:4},
    { rice_id: 28 , hardness: 0, softness: 5, sweetness: 0, freshness:6},
    { rice_id: 29 , hardness: 0, softness: 2, sweetness: 0, freshness:5},
    { rice_id: 30 , hardness: 3, softness: 0, sweetness: 3, freshness:0},
    { rice_id: 31 , hardness: 0, softness: 4, sweetness: 0, freshness:4},
    { rice_id: 32 , hardness: 2, softness: 0, sweetness: 0, freshness:2},
    { rice_id: 33 , hardness: 1, softness: 0, sweetness: 6, freshness:0},
    { rice_id: 34 , hardness: 0, softness: 1, sweetness: 1, freshness:0}, #かぶっていたので削除
    { rice_id: 35 , hardness: 0, softness: 3, sweetness: 3, freshness:0},
    { rice_id: 36 , hardness: 0, softness: 1, sweetness: 0, freshness:3},
    { rice_id: 37 , hardness: 4, softness: 0, sweetness: 0, freshness:3},
    { rice_id: 38 , hardness: 5, softness: 0, sweetness: 0, freshness:3},
    { rice_id: 39 , hardness: 2, softness: 0, sweetness: 0, freshness:4},
    { rice_id: 40 , hardness: 2, softness: 0, sweetness: 3, freshness:0},

    { rice_id: 41 , hardness: 5, softness: 0, sweetness: 6, freshness:0},
    { rice_id: 42 , hardness: 0, softness: 2, sweetness: 0, freshness:3},
    { rice_id: 43 , hardness: 0, softness: 2, sweetness: 3, freshness:0},
    { rice_id: 44 , hardness: 0, softness: 1, sweetness: 0, freshness:1},
    { rice_id: 45 , hardness: 0, softness: 1, sweetness: 1, freshness:0},
    { rice_id: 46 , hardness: 4, softness: 0, sweetness: 3, freshness:0},
    { rice_id: 47 , hardness: 0, softness: 1, sweetness: 0, freshness:4},
    { rice_id: 48 , hardness: 0, softness: 2, sweetness: 0, freshness:1},
    { rice_id: 49 , hardness: 4, softness: 0, sweetness: 0, freshness:5},
    { rice_id: 50 , hardness: 3, softness: 0, sweetness: 2, freshness:0},
    { rice_id: 51 , hardness: 0, softness: 3, sweetness: 0, freshness:5},
    { rice_id: 52 , hardness: 0, softness: 4, sweetness: 0, freshness:4},
    { rice_id: 53 , hardness: 0, softness: 1, sweetness: 0, freshness:2},
    { rice_id: 54 , hardness: 0, softness: 4, sweetness: 0, freshness:1},
    { rice_id: 55 , hardness: 0, softness: 5, sweetness: 3, freshness:0},
    { rice_id: 56 , hardness: 2, softness: 0, sweetness: 3, freshness:0},
    { rice_id: 57 , hardness: 0, softness: 6, sweetness: 5, freshness:0},
    { rice_id: 58 , hardness: 0, softness: 4, sweetness: 2, freshness:0},
    { rice_id: 59 , hardness: 2, softness: 0, sweetness: 2, freshness:0},
    { rice_id: 60 , hardness: 2, softness: 0, sweetness: 3, freshness:0}
  ]
)
