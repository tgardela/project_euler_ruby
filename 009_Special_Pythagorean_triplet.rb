require "Benchmark"

def find_triplet(number)
	z = 0
	(1...999).each do |a|
		(1...998).each do |b|
			c = 1000 - a - b
			z = a*b*c if a*a + b*b == c*c
		end
	end
	z
end

time = Benchmark.measure do
	puts find_triplet(1000)
end
print "Time: ", time