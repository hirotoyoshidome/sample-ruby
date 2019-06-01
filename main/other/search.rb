#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932

# ディレクトリの設定
dir = 'C:'

# ディレクトリの読み込み
dirs = Dir.open(dir).to_a

# 各ファイルの読み込み
dirs.each do |d|
	unless d == '.' || d == '..'  # よくわからんがこれは読めないから除外
		# ディレクトリのパスの設定
		directory = dir + '/' + d
		filenames = Dir.open(directory).to_a
		filenames.each do |filename|
			unless filename == '.' || filename == '..' # よくわからんがこれは読めないから除外
				# ファイルのパスの設定
				path = directory + '/' + filename
				#puts File.basename(path) #ファイル名出力
				
				file = File.open(path)
				
				# 各ファイルに対する処理
				#puts file.read
				
				#各行に対する処理
				file.each_line do |line|
					# フルパスの最初の方を削除する
					if line.include?('localhost') then
						unless line.include?('######') then
							if line.include?('') then
							end
						end
					end
				end
				
				#終了
				file.close
			end
		end
	end
end
