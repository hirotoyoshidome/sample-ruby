module Name
	module Na
		# moduleで定義したメソッドを参照可能に設定する
		module_function
		def hello
			puts "hello!!"
		end
	end
end

