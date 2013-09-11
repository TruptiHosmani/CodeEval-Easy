File.open(ARGV[0]).each_line do |line|
  puts line.split(" ").map{|i| i[0].upcase+i[1..-1]}.join(" ")
end