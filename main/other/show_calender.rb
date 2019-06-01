#!C:/Ruby25-x64/bin/ruby.exe
#! encoding : CP932

require 'date'

class ShowCalender
	def show_date(today)
		year = today.strftime("%Y")	
		month = today.strftime("%m")
		day = today.strftime("%d")
		first_date = Date.new(year.to_i, month.to_i, 1).strftime("%w")
		last_day = Date.new(year.to_i, month.to_i, -1).strftime("%d")
		put_calender(year, month, day, last_day.to_i, first_date.to_i)
	end

	def put_calender(year, month, day, last_day, date)
		puts "Today's #{year}/#{month}/#{day}"
		puts "Sun | Mon | Tue | Wed | Thu | Fri | Sat"
		n = 0
		flg = false
		(1..5).each do |week|
			puts ""
			(1..7).each do |day|
				if day - 1 == date then
					flg = true
				end
				if flg then
					n = n + 1
					print " " + sprintf("%02d", n) + " " if n <= last_day
					print "| " if n <= last_day 
					print "    | " if n > last_day
				else
					print "    | "
				end
			end
		end
		puts ""
	end
end

