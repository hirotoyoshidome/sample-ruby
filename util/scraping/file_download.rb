module FileDownload
	module_function
	# ファイルダウンロードを行う
	def img_download(urls, proxy)
		urls.each_with_index do |url, i|
			file_path = "../../out/#{i}.png"
			# wbはwrite, binaryモード
			open(file_path, 'wb') do |out|
				open(url, {:proxy_http_basic_authentication => proxy}) do |data|
					out.write(data.read)
					out.close
				end
			end
		end
	end
end

