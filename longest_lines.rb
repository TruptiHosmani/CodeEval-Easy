def n_longest_lines(n,input_lines)
  hash_for_input_lines = {}
  input_lines.each do |line|
    hash_for_input_lines[line] = line.length if line.length != 0
  end
  hash_for_input_lines =  hash_for_input_lines.sort_by {|k,v| v}.reverse
  for i in 0..(n - 1)
    puts hash_for_input_lines[i][0]
  end

end

File.open(ARGV[0]) do |f|
  n = f.readline.to_i
  input_lines = f.readlines.map(&:strip)
  #puts n.to_s + ": " + input_lines.to_s
  n_longest_lines(n,input_lines)
end