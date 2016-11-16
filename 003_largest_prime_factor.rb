require "Benchmark"
require "Prime"

def prime? n
  (2..(n-1)).each { |x| return false if n % x == 0 }
  true
end

def ge_largest_prime_factor(number)
	a = []
	product_sum = 1
	x = 2 # 2 is the first prime number
 
	while product_sum < number
		# if number % x == 0 && prime?(x) 
		if number % x == 0 && Prime.instance.prime?(x) 
			a << x
			product_sum *= x
		end
		x += 1
	end
	a.last
end

number = 600_851_475_143 

time = Benchmark.measure do
	puts ge_largest_prime_factor(number)
end
print "Time: ", time