def mod(n,m)
  while m >= n
    m -= n
    #puts m
  end
  return m
end
File.open(ARGV[0]).each_line do |line|
  m, n  = line.split(",").map(&:to_i)
  puts mod(n,m)
end