from selenium import webdriver
from selenium.webdriver.chrome.options import Options

# headlessモードの設定
chrome_options = Options()
chrome_options.add_argument("--headless")

# WebDriverの初期化
driver = webdriver.Chrome(options=chrome_options)

# ターゲットサイトへのアクセス
driver.get("https://www.example.com")

# スクレイピングの実行
# 例: タイトルの取得
title = driver.title
print(f"サイトタイトル: {title}")

# ドライバーの終了
driver.quit()