FROM python:3.8.5-alpine

ENV PYTHONBUFFERED 1


# コンテナ上のpipを最新のバージョンにする
RUN pip install --upgrade pip

# ローカルのrequirements.txtをコンテナにコピー
COPY ./requirements.txt /requirements.txt
# requirements.txtに記載しているPythonのパッケージ(ライブラリ)をコンテナ上インストール
RUN pip install -r requirements.txt

# Djangoプロジェクトを置くディレクトリをコンテナ上に作成
RUN mkdir /ext
# コンテナ上の作業ディレクトリを変更
WORKDIR /ext
# ローカルのextディレクトリをコンテナにコピー
