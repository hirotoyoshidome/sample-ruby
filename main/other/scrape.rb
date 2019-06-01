#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932
require 'open-uri'
require 'nokogiri'
require 'pp'
require 'anemone'
class Scrape
	def main
# 文字コード
charset = nil
url = 'https://qiita.com/yoru722'

# proxy設定がある場合はドメイン、ユーザー、パスワードの順で設定する
proxy = ['', '', '']

# htmlの取得
html = open(url, {:proxy_http_basic_authentication => proxy}) do |f|
	charset = f.charset
	f.read
end

# HTML解析(スクレイピング)
doc = Nokogiri::HTML.parse(html, nil, charset)
# title出力
p doc.title
# ppはオブジェクトを見やすく出力する
# pp doc
	end
end
