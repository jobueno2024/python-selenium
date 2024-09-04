FROM  --platform=linux/amd64 python:3.10

WORKDIR /app

# 必要なライブラリのインストール
COPY requirements.txt .
RUN pip install -r requirements.txt

# chromedriver を pip でインストール
RUN pip install chromedriver-binary

# 必要なライブラリをインストール
RUN apt-get update && apt-get install -y libnss3-dev libstdc++6

# スクリプトのコピー
COPY . .

# コンテナ起動時に実行するコマンド
CMD ["python", "main.py"]
