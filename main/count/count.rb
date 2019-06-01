#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : sjis

# directry
DIR = 'sample.txt'

# output directory
OUT_DIR = 'res.txt'

# count up 
def count_words(ary)
  a = Array.new
	h = Hash.new
  puts "処理する前のは入れつの長さは#{ary.length}"
  ary.each do |w|
    if a.include?(w) then
			h[w] = h[w] + 1
    else
			h[w] = 1
      a.push(w)
    end
  end
  puts "処理した後の配列の長さは#{a.length}"
  puts "重複箇所は#{ary.length - a.length}です"
	return h
end


# execute
def main(dir)
	begin
  	# read target file
  	file = File.open(dir)
  	text = file.read
  	# split as word
  	array = text.split(" ")
  	hash = count_words(array.sort!)
		handle_hash(hash)
	rescue StandardError => e
  	puts '例外発生'
  	puts e
	end
end

# handling hash
def handle_hash(hash)
	hash.each_pair do |key, val|
		puts "#{key} : #{val}"
		out_file("#{key} : #{val}\n")
	end
end

# output file 
def out_file(txt)
	file = File.open(OUT_DIR, "a+")
	file.write(txt)
	file.close
end

# execute
main(DIR)
