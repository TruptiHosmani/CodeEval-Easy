sum  = 0
File.open(ARGV[0]).each_line do |line|
  sum += line.strip.to_i
end
puts sum


def print_odd_number_1_99
  1.upto(99) do |num|
    if(num%2 == 1)
      puts num
    end
  end
end

print_odd_number_1_99

puts File.size(ARGV[0])