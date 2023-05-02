FROM ruby:3.1.2
# postgresqlのコマンドインストール
RUN apt-get update -qq && apt-get install -y postgresql-client
# nodejsのインストール
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
# yarnのインストール
RUN npm install --global yarn


# コンテナ内にディレクトリ作成
RUN mkdir /find_my_rice
#作業場所の設定
WORKDIR /find_my_rice
#gemfileをコンテナ内にコピーしインストール
COPY Gemfile* /find_my_rice/
RUN bundle install
# ソースコードをコピー
COPY . /find_my_rice
