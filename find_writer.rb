File.open(ARGV[0]).each_line do |line|
  if line.strip.length != 0
    text, numbers= line.split("|")
    text = text.split("")
    numbers= numbers.split(" ").map(&:to_i)
    name = ""
    numbers.each_index do |i|
      name << text[numbers[i]-1]
    end
    puts name
  end
end