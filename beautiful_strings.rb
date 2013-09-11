def beautiful_strings(line)
  char_array = line.gsub!(/\W+/, '').strip.downcase.split("").sort
  sum,i,char_map = 0,0,26
  count = Hash.new(0)
  char_array.each { |c| count[c] += 1 }
  count = count.sort_by {|k,v| v}.reverse
  count.each do|k,v|
    sum += v * char_map
    char_map -= 1
  end
  sum
end

File.open(ARGV[0]).each_line do |line|
  puts beautiful_strings(line)
end