require "Benchmark"

def path_number(grid_size)
	number_of_paths = 1
	(0...grid_size).each do |i|
		number_of_paths *= (2 * grid_size) - i
		number_of_paths /= i + 1
	end
	number_of_paths
end

time = Benchmark.measure do
	puts path_number(20)
end
print "Time: ", time