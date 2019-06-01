
require 'pry'

class Main3
	# インスタンス変数について使用する
	# 初期化(しないと取得できない)
	def initialize
		@name = "aa"
		@age = 10
		@gender = 'male'
	end
	# フィールドに対してgetter setterを準備する
	attr_accessor :name
	# getterに値するもの
	attr_reader :age
	# setterに値するもの
	attr_writer :gender
end
puts '###---START---###'
m = Main3.new
puts m.name
puts m.age
m.gender = 'female'
# puts m.gender読み取ろうとするとエラーが発生する(write onlyのため)
# binding.pry
# femaleが代入されていることを確認

puts '###----END----###'
