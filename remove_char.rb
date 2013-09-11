File.open(ARGV[0]).each_line do |line|
  text, char = line.strip.split(",")
  text = text.split("")
  char = char.strip.split("")
  #puts char.to_s + text.to_s
  puts (text - char).join("")
end