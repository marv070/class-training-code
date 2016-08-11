def off_by_one?(winner, yours)
	count = 0
	i = 0
	
	winner.length.times do 
		if yours[i] == winner[i]
			count += 1
		end
		i += 1
	end

	count == winner.length - 1
end

def find_no_cigar(your_number, winning_numbers)
	matches = []
	winning_numbers.each do |winner|
		if off_by_one?(winner, your_number)
			matches << winner
		end
	end
	matches
end

yours = "1234"
winners = ["9234","2345","1264","198"]
puts find_no_cigar(yours, winners)


