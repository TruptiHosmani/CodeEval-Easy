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

# ABbCcc” input string, we can see that it has a beauty of 152 points, but how? If the beauty of the letters is in
# normal order, the beauty of the string would be: 1+2+2+3+3+3, where the letter ‘a’ has a beauty of 1, letter ‘b’ 
# has a beauty of 2 and letter ‘c’ has a beauty of 3. But that only gives us the beauty of 14 for the whole string, 
# which is clearly incorrect. The next thing we could check is whether the letters are in reverse, so that would mean 
# letter ‘a’ has a beauty 26, letter ‘b’ has a beauty 25 and letter ‘c’ has a beauty 24. The beauty of the whole string
# should then be: 1*26+2*25+3*24=148, which is still not correct, because the actual value should be 152. What’s going on?
# Clearly the letters are not in any particular order and we need to figure out the beauty of each letter independently 
# of how they appear in the alphabet. We can see that the 148 is pretty close to 152, so if we rearrange the beauty of 
# the letters ‘a’, ‘b’, and ‘c’, we might get the right value. If the beauty of the letter ‘c’ is 26, the beauty of the 
# letter ‘b’ is 25 and the beauty of the letter ‘a’ is 24, we get exactly 152: 1*24+2*25+3*26=152. So we’ve just figured 
# out the beauty of the first three letters, which can’t be calculated any other way.
