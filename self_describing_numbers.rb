def self_describing_numbers(n)
  digits = n.to_s.split("")
  ans = []
  for i in 0..(digits.length-1)
    #puts "i ="  + i.to_s + "="+digits.count(i.to_s).to_s
    ans << digits.count(i.to_s).to_s 
  end
  ans == digits ? true : false
end
File.open(ARGV[0]).each_line do |line|
  puts self_describing_numbers(line.to_i)  ? 1 : 0
  #puts "============================"
end