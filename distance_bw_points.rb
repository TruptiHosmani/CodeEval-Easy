File.open(ARGV[0]).each_line do |line|
  #puts line
  numbers = line.split(",").join(" ").split(") (").join(" ").split("(").join(" ").split(")").join(" ").split(" ").map(&:to_i)
  puts Math.sqrt(((numbers[2]-numbers[0])**2) + ((numbers[3]-numbers[1])**2)).to_i
end