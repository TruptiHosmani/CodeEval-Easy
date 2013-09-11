File.open(ARGV[0]).each_line do |line|
  numbers =  line.split("").map(&:to_i)
  sum = 0
  numbers.each do |n|
    sum +=  n
  end
  puts sum
  
end