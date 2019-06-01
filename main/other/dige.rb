#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932

require 'digest/sha2'

class Dige
	def show_dige(txt)
		puts Digest::SHA256.hexdigest txt
	end
end

