# ベースとするDockerイメージを指定
FROM python:3.8.5-alpine

# リアルタイムでログを見れるように環境変数を指定
ENV PYTHONBUFFERED 1

# Djangoプロジェクトを置くディレクトリをコンテナ上に作成
RUN mkdir /ext
# コンテナ上の作業ディレクトリを変更
WORKDIR /ext





# ローカルのrequirements.txtをコンテナにコピー
COPY ./requirements.txt /requirements.txt

# コンテナ上のpipを最新のバージョンにする
RUN pip install --upgrade pip
# requirements.txtに記載しているPythonのパッケージ(ライブラリ)をコンテナ上インストール
RUN pip install -r requirements.txt




