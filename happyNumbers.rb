def happy_numbers(n)
  visited = []
  until ( n == 1 || visited.include?(n))
    visited << n
    digits  = n.to_s.split("")
    #puts "digits =" + digits.to_s
    sum = 0 
    digits.each do |i|
      sum += (i.to_i*i.to_i)
    end
    n = sum
    #puts "sum is " + sum.to_s
  end
  n ==  1
end
File.open(ARGV[0]).each_line do |line|
  puts happy_numbers(line.to_i)  ? 1 : 0
  #puts "============================"
end

