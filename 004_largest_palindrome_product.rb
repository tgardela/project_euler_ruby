require "Benchmark"

def get_largest_palindrome_number()
	palindroms = []
	(100..999).each do |i|
		(100..999).each do |j|
			nS = (i * j)
			if is_palindrome?(nS) && !palindroms.include?(nS)
				palindroms << nS
			end
		end		
	end
	puts palindroms.max
end

def is_palindrome?(number)
	number.to_s == number.to_s.reverse
end

def divideable?(number)
  999.downto(100).each { |y| return true if number % y == 0 && (number / y).to_s.length == 3 }
  false
end

def get_largest_palindrome_number2()
	999999.downto(100000).each do |y|
		if is_palindrome?(y) && divideable?(y)
			puts y
			break
		end
	end
end

functions = [get_largest_palindrome_number(), get_largest_palindrome_number2()]

(1..2).each do |x|
	time = Benchmark.measure do
		print functions[x]
	end
	print "Time: ", time
end
