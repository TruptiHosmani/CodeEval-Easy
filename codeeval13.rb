File.open(ARGV[0]).each_line do |line|
  set = line.split(";")
  set1 = set[0].split(",").map(&:to_i)
  set2 = set[1].split(",").map(&:to_i)
  output = set1 & set2
  puts output.join(",")
end