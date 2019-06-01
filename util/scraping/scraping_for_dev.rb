# encoding: UTF-8
require 'nokogiri'
require 'open-uri'
require 'pp'

require_relative './file_download.rb'

### Nokogiri　基本的な使用方法

# 検索対象のURL
url = "https://dev.to/"
# 文字コード
charset = nil
# プロキシ設定がある場合はここで設定を行う(http://xxx.co.jp:80, user, pass)
proxy = ['', '', '']

# 検索対象のHTMLを取得する
html = open(url, {:proxy_http_basic_authentication => proxy}) do |h|
  charset = h.charset
  h.read
end

# HTMLパース
doc = Nokogiri::HTML.parse(html, nil, charset)
puts "タイトル：#{doc.title}"

img_urls = []
# 画像(src属性値)を取得
doc.css('div.small-pic img').each do |link|
	img_urls.push link.attribute('src').value
end

# ダウンロードを行う
FileDownload.img_download(img_urls, proxy)
