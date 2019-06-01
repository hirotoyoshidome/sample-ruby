#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932

# アクセス修飾子について

class Main
	# public 全てから参照可能
	def sample1
		# do some work
	end
	public :sample1

	# protected 
	def sample2
		# do some work
	end
	protected :sample2

	# private
	def sample3
		# do some work
	end
	private :sample3
end

