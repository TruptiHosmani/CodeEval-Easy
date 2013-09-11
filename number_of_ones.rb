File.open(ARGV[0]).each_line do |line|
  num = line.strip.to_i
  puts num.to_s(2).count("1")
end