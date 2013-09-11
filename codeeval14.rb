File.open(ARGV[0]).each_line do |line|
  unless line.empty?
    s, c = line.strip.split(",")
    puts (s.rindex(c) || -1)
  end
end

