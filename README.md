# Dockerイメージのビルド
docker build -t scraping-env .

# Dockerコンテナの起動
docker run -it scraping-env

# スクレイピングの実行
コンテナ内でスクリプトを実行します。
python main.py

docker exec -it busy_montalcini python main.py
