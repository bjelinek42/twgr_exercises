puts "Reading Fahrenheit tempurature from data file..."
num = File.read("temp.dat")
f = num.to_i
c = (f - 32) * 5/9
puts "The number is " + num
print "Result: "
puts c
puts "Saving file to output file 'temp.out'"
ce = File.new("temp.out", "w")
ce.puts c
ce.close
