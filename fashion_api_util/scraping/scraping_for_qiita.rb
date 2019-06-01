# encoding: UTF-8
require 'nokogiri'
require 'open-uri'
require 'pp'

### Nokogiri　基本的な使用方法

# 検索対象のURL
url = "https://qiita.com/tags/ruby"
# 文字コード
charset = nil
# プロキシ設定がある場合はここで設定を行う
proxy = ['', '', '']

# 検索対象のHTMLを取得する
html = open(url, {:proxy_http_basic_authentication => proxy}) do |h|
  charset = h.charset
  h.read
end

# HTMLパース
doc = Nokogiri::HTML.parse(html, nil, charset)
puts "タイトル：#{doc.title}"

# Qiitaより人気の記事(Rubyを取得する)
# text, contentメソッドはタグの間のテキストを取得する(タグのBody部)
doc.css('a.u-link-no-underline').each do |page|
	puts page.content
end
