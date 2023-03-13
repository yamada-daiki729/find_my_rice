# frozen_string_literal: true

module ApplicationHelper
  def default_meta_tags
    {
      site: 'Find_my_rice',
      title: 'お気に入りのお米を探す検索サービス',
      reverse: true,
      charset: 'utf-8',
      description: 'find_my_riceを使えば、全国のいろいろなお米を探すことができます。',
      keywords: 'お米,全国,白米,お米総選挙',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('brandmark-design-1200x630.png'), # 配置するパスやファイル名によって変更すること
        local: 'ja-JP'
      },
      # Twitter用の設定を個別で設定する
      twitter: {
        card: 'summary_large_image', # Twitterで表示する場合は大きいカードにする
        site: '@', # アプリの公式Twitterアカウントがあれば、アカウント名を書く
        image: image_url('brandmark-design-630x630.png') # 配置するパスやファイル名によって変更すること
      }
    }
  end

  def page_title(page_title = '')
    base_title = 'Find_my_rice'

    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def twitter_share_message(user)
    message = "&text=【私の米（まい）ランキングはこれです!】%0a%0a  No1. #{ user.user_rankings.find_by(rank:1).rice.name }%0a%0a  No2. #{ user.user_rankings.find_by(rank:2).rice.name }%0a%0a  No3. #{ user.user_rankings.find_by(rank:3).rice.name }%0a%0a"
    return message
  end
end
