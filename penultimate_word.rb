File.open(ARGV[0]).each_line do |line|
  words = line.split(" ").reverse
  puts words[1]
end