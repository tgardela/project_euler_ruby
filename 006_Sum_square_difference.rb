require "Benchmark"
 
 def get_sum_square_difference(upto)
	a = 0
	b = 0
	(1..upto).each do |x|
		a += x
		b += x**2
	end
	a**2 - b	
 end

time = Benchmark.measure do
	puts get_sum_square_difference(100)
end
print "Time: ", time