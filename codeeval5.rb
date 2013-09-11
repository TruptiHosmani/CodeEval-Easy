File.open(ARGV[0]).each_line do |line|
  numbers = line.split(",")
  #puts numbers.to_s
  count = 1
  found = false
  while(found == false) do
    if((numbers[1].to_i * count) > numbers[0].to_i)
      puts (numbers[1].to_i * count)
      found = true
      
    end
    count += 1
  end
end