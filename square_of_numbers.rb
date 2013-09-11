def find_square(n)
  count = 0
  for i in 0..(Math.sqrt(n).floor)
    sq = Math.sqrt(n-i**2)
    count +=1 if (sq >= i && sq==sq.to_i)
  end
  count
end

File.open(ARGV[0]) do |f|
  n = f.readline.to_i
  numbers = f.readlines.map(&:to_i)
  #puts numbers.to_s
  numbers.each do |i|
    puts find_square(i)   
  end
end