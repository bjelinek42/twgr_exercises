puts 'Reading Celcius temperature value from data file...'
num = File.read("temp.dat")
c = num.to_i
f = (c * 9 / 5) + 32
puts "The number is " + num
print "Result: "
puts f
puts "Saving file to output file 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts f
fh.close