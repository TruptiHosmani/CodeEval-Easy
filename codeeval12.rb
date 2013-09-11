File.open(ARGV[0]).each_line do |line|
  list_of_numbers = line.strip.split(",").map(&:to_i)
  list_of_numbers.uniq!
  puts list_of_numbers.join(",")
end