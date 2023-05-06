FROM ruby:3.1.2

#　本番環境用の環境変数

ENV RAILS_ENV=production
# postgresqlのコマンドインストール
RUN apt-get update -qq && apt-get install -y postgresql-client
# nodejsのインストール
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y --fix-missing nodejs
# yarnのインストール
RUN npm install --global yarn


# コンテナ内にディレクトリ作成
RUN mkdir /find_my_rice
#作業場所の設定
WORKDIR /find_my_rice
#gemfileをコンテナ内にコピーしインストール
COPY Gemfile /find_my_rice/Gemfile
COPY Gemfile.lock /find_my_rice/Gemfile.lock
RUN gem install bundler
RUN bundle install
# ソースコードをコピー
COPY . /find_my_rice

COPY start.sh /start.sh
RUN chmod 744 /start.sh
CMD ["sh", "/start.sh"]
