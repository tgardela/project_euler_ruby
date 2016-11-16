require "Benchmark"

def get_smallest_number()
	dividors = [11,13,14,15,16,17,18,19,20]
	number = 232792540
	while true
		counter = 0
		dividors.each do |d|
			if number % d == 0
				counter += 1
			else
				break
			end
		end
		if counter == 9
			break
		end
		number += 20
	end
	number
end

time = Benchmark.measure do
	puts get_smallest_number
end
print "Time: ", time