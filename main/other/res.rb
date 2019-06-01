class Res
	# 素数発見
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

	# 数字の発見
	def sort_string_num(str)
		ary = str.split(/[a-z]+/)
		res = []
		ary.each do |n|
			res.push n.to_i unless n.to_i == 0
		end
		puts "asc\n#{res.sort}"
		puts "desc\n#{res.sort.reverse}"
	end
end

class Result
	def res
		r = Res.new
		r.find_prime_num(1000)
		r.sort_string_num('csdhu924rf38aijdjw829dhu3')
	end
end

res = Result.new
res.res
