def  mth_last_ele(n,input_array)
  input_array[-n]
end

File.open(ARGV[0]).each_line do |line|
  input_array =  line.strip.split(" ").to_a
  n = input_array[-1].to_i
  input_array = input_array[0..-2]
  puts mth_last_ele(n,input_array)
end