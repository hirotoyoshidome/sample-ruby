#! ruby -Ks
# encoding: UTF-8
print ("Hello")  #\r\nがつかない
print "World"
#実行するときはalt + rで実行できるよ
#ちなみにencodingの設定は必須
puts("Hello")  #\r\nがつく
puts "World"

=begin
実行時ドキュメント
この部分は実行時に無視される
何行書いても大丈夫
=end

print ("あいうえお");

print ("あいうえお".class())  #型を出力する(String)

print (11);

print (11.class)  #Integer  ()は省力できる

String.new("aaa")

#ヒアドキュメントの使用
#printがないと出力されない
#<<-にすることもできる(空白とかが含めることができるらしい)
print <<"EOS"
ここに書いた文字はそのまま
出力される
ちなみに
EOSは慣習的に使用される
End of Stringのこと
終了の際はダブルクォーテーションで括らない
           スペースも評価されるよ
EOS


name = "yoru"  # String name = "";  変数定義
               #System.out.println(name);

print ("名前は" + name + "です")  #変数の使用

print ("年齢は #{1 + 3} です")   #同一カッコ内に#{}で数式を書くことで埋め込みをすることができる


str = "a"
count = 5
print ( str * count)  #5回aが繰り返される

puts ("Japan" << " at Tokyo")  #文字列連結が行える

print (11 + 1.1)  #型が異なる計算も簡単
print (1.1.class)  #Float型

print(111_111)  #3桁区切りの数値として評価できる

print (2**3)  #べき乗の計算ができる その他の計算は一緒

age1, age2, age3 = 1, 2, 3  #多重代入ができる
print(age1)
print(age2)
print(age3)

#定数では大文字で変数名を定義する

num = 2
#thenは省略可能

if num != 2 then
  print("2ではないです")
end

# nullはnilって表現される？？
#elseif elseも使用できる(elseifはスペースなし else ifでは使用できない)


unless num == 1 then
  puts("unlessはflseのときにしょりが実行される")
end

#switch文はswitchは書かないでcaseとwhenで表現する
case num
when 1 then
  print("1です")
when 2 then
  print("2です")
end

#3項演算子も使用できる

#ifとunlessは修飾子としても使用できる

print("修飾子として使用") if num = 2  #trueなら実行

#until文はwhile分の逆でfalseの場合ずっとループする
while num < 3 do
  num = num +1
  print(num)
end

#for文はinを使用する

for n in 1..3 do
  puts(n)
end
#...では最後の部分は含まれない

# Kotolinと一緒のRangeも使用できる
# Rangeインスタンスを生成して範囲を設定する


#for文を使用しなくてもeachメソッドを使用することでループを回すことができる
#timesを使用することでも回すことができる

#uptoメソッドでは１ずつインクリメントしていく
#dfowntoでは１ずつデクリメントしていく

#stepメソッドでは指定された数ずつインクリメントし指定された範囲まで繰り返す


#loopメソッドでは無限ループを繰り返す(break必須)


#breakはループを抜ける
#nextはその処理以降を抜けて次のループに移動する
#redoでは次のループではなくループの最初まで戻る


#whileとuntilは修飾子として使用できる

#配列
array = ["リンゴ", "ブドウ", "みかん"]
#の様に定義する
print(array)  #オブジェクトIDで返す

print(array.length)  #3を返す

for i in array do
  puts(i)  #出力する
end


#ハッシュを扱う
#設定するときにデフォルト値を設定することもできる
hash = {"name" => "mike", "age" => 10}
#取得するときはfetchメソッドを使用する

print(hash.fetch("name"))

hash,default = "ない"

#storeメソッドで追加する

#lenth sizeで長さを取得できる

#each each_key each_valueメソッドが使用できる(繰り返し)


#メソッドを使用するときはdefを使用する

def method ()
  print("HelloWorld!\r\n")
end

method  #メソッドの使用

#引数を使用

def method2 (count)
  print(count + "です")
end

method2("1")  #引数付きメソッドの使用

#Kotlinと同じように引数のデフォルト値を設定することができる

#可変長引数を定義する
def method3 (*names)  #namesに引数に設定したものが設定される
  name = ""
  names.each do |n|
    name << n << ", "  #追加する
  end

  print(name + "です\r\n")
end

method3("mike", "johnny")


#戻り値
def method4 (num1, num2)
  return num1 + num2
end

print(method4(1, 4))  #戻り値の型は宣言しない

#多重代入を使用して複数の戻り値を設定することもできる
#つまりカンマで区切って複数の戻り値を返せる



## クラスの部分から勉強する
