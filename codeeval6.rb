File.open(ARGV[0]).each_line do |line|
  n,p1,p2 = line.split(",").map(&:to_i)
  
end