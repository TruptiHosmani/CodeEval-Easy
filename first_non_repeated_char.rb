File.open(ARGV[0]).each_line do |line|
  input_array = line.strip.split("")
  h = {}
  input_array.each do |c|
    if h.has_key? c
      h[c] += 1
    else 
      h[c] = 1
    end
  end

  h.delete_if { |k,v| v > 1}
  puts h.keys.first
end