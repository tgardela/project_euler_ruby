require "Benchmark"
require "Prime"
 
 def find_nth_prime(nth_prime)
	number = 3
	counter = 1
	while true		
		counter += 1 if Prime.instance.prime?(number)
		break if counter == nth_prime
		number += 2
	end
	number
 end

time = Benchmark.measure do
	puts find_nth_prime(10_001)
end
print "Time: ", time