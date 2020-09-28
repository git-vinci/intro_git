FROM python:3.8.5-alpine

ENV PYTHONBUFFERED 1


# コンテナ上のpipを最新のバージョンにする
RUN pip install --upgrade pip

# requirements.txtに記載しているPythonのパッケージ(ライブラリ)をコンテナ上インストール
RUN pip install -r requirements.txt