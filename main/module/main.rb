#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932
require_relative './hoge.rb'
require_relative './name.rb'

# moduleを使用することで名前空間を設定できる
# 名前空間の設定はgemの作成とかAPIを作成するときに使用する
h = Hoge::Ho.new
h.c
# メソッド定義の前にselfで自分自身を参照することでインスタンスを生成せずにメソッドの呼び出しを行うことができる。
Hoge::Ho.c2

# 名前空間のmodule宣言とMix-inとしてのmodule宣言を組み合わせる
# module_functionを宣言しているため(呼び出し元で)メソッド呼び出しが可能になる
Name::Na.hello
