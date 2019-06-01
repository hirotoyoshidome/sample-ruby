require 'net/http'
require 'uri'
require 'json'
require 'logger'

# [ロガー]
# カレントディレクトリのwebapi.logというファイルに出力
logger = Logger.new('./webapi.log')

# [URI]
# URI.parseは与えられたURIからURI::Genericのサブクラスのインスタンスを返す
# -> 今回はHTTPプロトコルなのでURI::HTTPクラスのインスタンスが返される
#
# オブジェクトからは以下のようにして構成要素を取得できる
uri = URI.parse("http://localhost:3000/products")

begin
  # [GETリクエスト]
  # Net::HTTP.startでHTTPセッションを開始する
  # 既にセッションが開始している場合はIOErrorが発生
  response = Net::HTTP.start(uri.host, uri.port) do |http|
    # Net::HTTP.open_timeout=で接続時に待つ最大秒数の設定をする
    # タイムアウト時はTimeoutError例外が発生
    http.open_timeout = 5

    # Net::HTTP.read_timeout=で読み込み1回でブロックして良い最大秒数の設定をする
    # タイムアウト時はTimeoutError例外が発生
    http.read_timeout = 10

    # Net::HTTP#getでレスポンスの取得
    # 返り値はNet::HTTPResponseのインスタンス
    http.get(uri.request_uri)
  end

  # [レスポンス処理]
  # ステータスコードに応じてレスポンスのクラスが異なる
  # 1xx系 => Net::HTTPInformation
  # 2xx系 => Net::HTTPSuccess
  # 3xx系 => Net::HTTPRedirection
  # 4xx系 => Net::HTTPClientError
  # 5xx系 => Net::HTTPServerError
  case response
  # 2xx系
  when Net::HTTPSuccess
    # [JSONパース処理]
    # JSONオブジェクトをHashへパースする
    # JSON::ParserErrorが発生する可能性がある
		# 今回はローカル内で作成したAPIを叩いてJSONで返ってくるためnameとpriceを取得できれば成功
		# API側では全選択を行っているため連す配列の中にハッシュが格納されている
    result = JSON.parse(response.body)
		result.each_with_index do |res, i|
			puts "###実行結果:#{i.to_i + 1} : name = #{res['name']}, price = #{res['price']}###"
		end
  # 3xx系
  when Net::HTTPRedirection
    # リダイレクト先のレスポンスを取得する際は
    # response['Location']でリダイレクト先のURLを取得してリトライする必要がある
    logger.warn("Redirection: code=#{response.code} message=#{response.message}")
  else
    logger.error("HTTP ERROR: code=#{response.code} message=#{response.message}")
  end

# [エラーハンドリング]
# 各種処理で発生しうるエラーのハンドリング処理
# 各エラーごとにハンドリング処理が書けるようにrescue節は小さい単位で書く
rescue IOError => e
  logger.error(e.message)
rescue TimeoutError => e
  logger.error(e.message)
rescue JSON::ParserError => e
  logger.error(e.message)
rescue => e
  logger.error(e.message)
end
