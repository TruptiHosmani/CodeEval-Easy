File.open(ARGV[0]).each_line do |line|
  puts numbers = line.split(" ").map(&:to_f).sort.map{|n| "%0.3f" % n}.join(" ")
end