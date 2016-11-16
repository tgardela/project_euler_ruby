require "benchmark"

# sum = 0
# (1...1000).each {|x| sum += x if x % 3 == 0 or x % 5 == 0}
# puts sum



time = Benchmark.measure do
  puts (1..999).select{|x| (x % 3 == 0) || (x % 5 == 0)}.reduce(:+)
end
print "Time: ", time