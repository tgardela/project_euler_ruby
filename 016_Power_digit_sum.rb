require "Benchmark"

def power_digit_sum(number, base = 10)
	number = number.to_s.split("")	
	sum = 0
	number.each { |n| sum += n.to_i}
	sum
	# number.to_s.split("").inject(0) { |sum, n| sum + n.to_i }
end

time = Benchmark.measure do
	puts power_digit_sum(2 ** 1000)
end
print "Time: ", time