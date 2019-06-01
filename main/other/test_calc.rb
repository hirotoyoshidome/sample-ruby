#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932
#
require 'test/unit'
require_relative 'calc'

# Test Class
class TestCals < Test::Unit::TestCase
	def test_calc_int
		int1, int2 = 2, 5
		target = Calc.new
		assert_equal 7, target.calc_int(int1, int2)
	end
end
