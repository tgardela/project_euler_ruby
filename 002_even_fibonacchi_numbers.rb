require "benchmark"

def get_fib_array(upto)
	a = [1,2]
	while a[-2] + a[-1] < upto
		a << a[-2] + a[-1] 
	end
	a
end

time = Benchmark.measure do
  puts "The result is ",  get_fib_array(4_000_000).select{ |x| x.even?}.reduce(:+)
end
print "Time: ", time