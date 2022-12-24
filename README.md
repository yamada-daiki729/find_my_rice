# Find_My_Rice　　
■ サービス概要
  お米の種類、特徴を知らない人が
  気軽に
  色々なお米を探し買うことができるサービス

　■メインのターゲットユーザー
  お米が好きな人。
  お米をネットで購入する人。

　■ユーザーが抱える課題
  お米は好きだけどどんな品種があるのか、どんな特徴があるのか知らないからいつも同じ品種のお米を食べてしまう。

　■解決方法
　日本地図を用意して簡単に色んな都道府県のお米品種を調べられるようにする。
  そしてそのお米の特徴などもグラフを使用して簡易的に可視化できるようにする
　気に入った品種をクリックするとアマゾン、楽天のサイトに飛び購入できるようにする。

　■実装予定の機能（以下の例は実際のアプリの機能から一部省略しています）
  ・非ログインユーザー
    ・日本地図にて都道府県をクリックするとのお米の品種一覧を表示できる
    　・お米の品種をクリックすると簡単な特徴をグラフで見れる
    ・カテゴリ検索(品種名、都道府県名、硬さ、柔らかさ、さっぱり、甘め)でお米の品種一覧を見れる
    ・『お米総選挙』機能。全ユーザーの『おこめ米(まい)ランキング』から情報を取り、ユーザーの人気お米ランキング提示する

  ・ログインユーザー
    ・日本地図にて都道府県をクリックするとのお米の品種一覧を表示できる
    　・お米の品種をクリックすると簡単な特徴をグラフで見れる
    ・カテゴリ検索(品種名、都道府県名、硬さ、柔らかさ、さっぱり、甘め)でお米の品種一覧を見れる
    ・『お米総選挙』機能。全ユーザーの『おこめ米(まい)ランキング』から情報を取り、ユーザーの人気お米ランキング提示する =>ここまでは非ログインと共通
    　
    ・品種をクリックした時、楽天、アマゾンでの検索をかけるリンクを用意する
    ・品種のお気に入り機能を登録できるようにする
    ・自分の中のお米ランキングを決める機能 『おこめ米(まい)ランキング』　=>これが『お米総選挙』のエビデンスになる
    ・マイページ機能

  ・管理機能
  　・お米品種情報の　　一覧、作成、編集、削除機能
  　・ユーザーの　　　　一覧、作成、編集、削除機能
  　・お米の特徴情報の　一覧、作成、編集、削除機能


　■なぜこのサービスを作りたいのか？
　前職お米屋さんをしていてお米マイスターという資格も持っていました。
　自分自身お米が好きで、色々なお米を食べていましたが、それができたのはお米の知識があったり、お米マイスターが集まる試食会などがあったからです。
　お米業界、知識をあまり知らない一般の人は知る機会がないため同じ品種を食べ続けるひとが多いと思います。
  お米には特徴があり、多種多様なおいしさがあります。ぜひそれを簡単に知っていただきたい。
  そしてその場で購入フォームまで行けるようにしたいと思いこのサービスを作ろうと決めました。

  ■画面遷移図
  https://www.figma.com/file/4JNibTJxm8QNvDMYOyIwdc/%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0%3A1&t=dz5exWvObnJz3wEJ-1


　■スケジュール
　企画〜技術調査：12/24〆切
　README〜ER図作成：12/26 〆切
　メイン機能実装：12/27 - 1/27
　β版をRUNTEQ内リリース（MVP）：1/31〆切
　本番リリース：2月17日
