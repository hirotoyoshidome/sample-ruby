require 'webrick'

### 実装中

# クローラでテストを行うWebサーバーの実装
# http://localhost:8000/に接続

srv = WEBrick::HTTPServer.new({
	DocumentRoot: './',
	BindAddress: '127.0.0.1', # localhost
	Port: 8000
})

# 同じディレクトリにhtmlファイルを配置することでパス指定で表示することが可能となる

# 今回は画像ファイルやHTMLファイルcss, jsファイル等きちんと受け取れるかを検証するためにいろいろ置いてみる。

# ファイルとパスを関連付ける(マウントする)
srv.mount('/index', WEBrick::HTTPServlet::FileHandler, 'index.html')
srv.mount('/new', WEBrick::HTTPServlet::FileHandler, 'new.html')

# 起動する
srv.start
