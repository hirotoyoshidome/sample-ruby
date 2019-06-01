# encoding: UTF-8
puts "aa" #引数でr(read)は読み取り専用 w(write)は書き込み r+は両方できる
file = File.open('../in/sample.txt', "r+")  #ルートディレクトリからの参照は..を先頭につけて参照する
puts file.read  #ファイルを読み込み
file.puts("書き込み")
puts "書き込み後"
file.close  #きちんと閉じる
# r+に対しa+(append)は末尾に追加できる
file2 = File.open("../in/sample.txt", "a+")
puts file2.read
file2.puts "Hello"
file2.puts file2.size #ファイルのサイズ
file2.puts file2.atime #ファイルの最終アクセス日(access)
file2.puts file2.mtime #ファイルの最終更新日(modify)
file2.close

#each_lineメソッドやforeachメソッドが使用できる

file3 = File.open("../out/output.txt", "a+") #ファイルの出力ができる
file3.puts "出力"        #設定されたパスにものがない場合新規でファイルを作成する
file3.close
