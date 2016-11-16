require "Benchmark"
require "Prime"

def sum_of_primes(upto)
	sum = 2
	(3..upto).step(2).each do |n|
		sum += n if Prime.instance.prime?(n)
	end
	sum
end

time = Benchmark.measure do
	puts sum_of_primes(2_000_000)
end
print "Time: ", time