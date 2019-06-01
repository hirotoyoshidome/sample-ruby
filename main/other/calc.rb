#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932


class Calc
	def calc_int(int1, int2)
		int1 + int2
	end

	def calc_ary(ary1, ary2)
		ary1.each do |n1|
			ary2.each do |n2|
				puts n1 + n2
			end
		end
	end

	def hectare(com_side, com_area)
		# 1ha = 10^4 m^2
		# 100m * 100m
		# tokyo dome = 46.755 * 10^3 m^2(216m * 216m) ≒ 4.7ha

		# meters
		one_side = 100
		# ha(tokyo dome)
		base_ha = 4.68
		# area
		area = com_area == nil ? com_side * com_side : com_area

		exam_dome = area / base_ha

		puts "Tokyo dome #{exam_dome} times"
	end

	def find_prime_num(len)
		# 1 is always prime
		(1..len).each do |n|
			ans = 0
			(1..n).each do |n2|
				ans = ans + 1 if n % n2 == 0
			end
			puts n if ans == 2
		end
	end

	def sort_array_num(ary)
		puts "asc\n#{ary.sort}"
		puts "desc\n#{ary.sort.reverse}"
	end

	def sort_string_num(str)
		ary = str.split(/[a-z]+/)
		res = []
		ary.each do |n|
			res.push n.to_i unless n.to_i == 0
		end
		puts "asc\n#{res.sort}"
		puts "desc\n#{res.sort.reverse}"
	end

	def euclid(i1, i2)
		large = i1 < i2 ? i2 : i1	
		small = i1 < i2 ? i1 : i2	

		dif = nil
		while dif != 0 do
			dif = large % small
			large = small
			puts small if dif == 0
			small = dif
		end
	end
end

