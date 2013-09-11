def hex(n)
 digits = n.strip.split("")
 sum = 0 
 digits.reverse!
  for i in 0..(digits.length-1)
    if digits[i].to_i.between?(1, 9)
      sum += digits[i].to_i*(16**i)
      
    else
      num = 0
      case digits[i]
      when "a"
        num = 10
      when "b"
        num = 11
      when "c"
        num = 12
      when "d"
        i = 13
      when "e"
        num = 14
      when "f"
        num = 1
      else
        return "not a hex number"
      end
      sum += num.to_i*(16**i)
    end 
  end
  sum
end
File.open(ARGV[0]).each_line do |line|
  puts hex(line)
end