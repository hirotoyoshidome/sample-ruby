
require 'anemone'

### Anemone　基本的な使用方法

# 検索対象のドメインを設定する
domain = "https://qiita.com/yoru722"
# プロキシ設定がある場合ホスト名のみを設定する(xxx.co.jp)
proxy_host = ""
# プロキシ設定がある場合ポートを指定する(80)
proxy_port = ""

# クローリング実行時の設定値
# depth_limitは検索する階層の深さ
# delayは1検索ごとにsleepする時間
# skip_query_stringsはtrueでクエリストリングを無視する
opts = {:proxy_host => proxy_host, :proxy_port => proxy_port, :depth_limit => 1, :delay => 0, :skip_query_strings => true}

# クローリングを実行する
Anemone.crawl(domain, opts) do |anemone|

	# 巡回するリンクを指定する
	# ここでは取得したリンクの10個のみを取得する
	anemone.focus_crawl do |page|
		page.links.slice(0..9)
	end

	# 指定されたリンク(URL)(正規表現で)に処理ができる
	anemone.on_pages_like(/.*tags.*/) do |page|
		puts page.url
	end

	# 指定されたリンク以外に処理ができる
	anemone.skip_links_like(/.*tags.*/) do |page|
		puts page.url
	end

	# 全てのクローリング結果に対して処理を実行する
	anemone.on_every_page do |page|
		# urlを取得
		puts page.url
		# headerを取得
		# puts page.headers
		# レスポンスコードを取得
		# puts page.code
		# HTMLを取得
		# puts page.body
		# Nokogiriで使用できる形式で取得
		# puts page.doc
		# ページ内のaタグを取得
		# puts page.links
	end
end
