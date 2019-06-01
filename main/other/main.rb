#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932

require_relative 'dige'
require_relative 'calc'
require_relative 'show_calender'
require 'time'

# TEXT = 'hello'
# d = Dige.new
# d.show_dige(TEXT)

# show_calender
# cal = ShowCalender.new
# cal.show_date(Time.now)

# val1, val2 = 1, 4
# ary1 = [2, 7, 4, 12]
# ary2 = [4, 6, 34, 21]
c = Calc.new
# c.calc_int(val1, val2)
# c.calc_ary(ary1, ary2)

# 10^2 meters
# c.hectare(2, 4)
# c.find_prime_num(50)

# sort array
# ary = [8, 4, 6, 9, 7, 1]
# c.sort_array_num(ary)

# sort string
# str = 'ada5455aca895cac787cad451cadcd844ad8'
# c.sort_string_num(str)
# c.euclid(1617, 273)

hash = {'one' => 1, 'two' => 2}
hash['one'] = 11

puts 2 & 3 # ビット演算子 and
puts 2 | 3 # or
puts 2 ^ 3 # xor
puts ~1    # ビット反転
# 進数 Decimal
puts 0b00000010  #2進数 2 binary
puts 0x00000010  #16進数 16 hex

# ビット反転
puts ~0b00001010
puts (-11).to_s(2)

puts 0b00000001 #1
# 補数は
puts 0b00000010
# 補数は2進数に1を加えたもの
# シフト移動(左に2つ動かす)
puts 0b00000001 << 2
# これは右に2つ移動
puts 0b00000100 >> 2

# AND演算子　両方1が立っているものだけ1になる
puts (0b10100101 & 0b11001100).to_s(2)# これだと10000100
# OR演算子　どちらかに1が立っているなら1になる
puts (0b10100101 | 0b11001100).to_s(2)# これだと11101101
# XOR演算子　両方1の場合のみ0になる
puts (0b10100101 ^ 0b11001100).to_s(2)# これだと01101001


