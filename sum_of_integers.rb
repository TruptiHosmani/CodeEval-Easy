File.open(ARGV[0]).each_line do |line|
  array_int =  line.split(",").map(&:to_i)
  #puts array_int.to_s
  sum = 0
  sub_array = []
  for i in 0..(array_int.length-1)
    for j in 0..(array_int.length-1)
      sub_array << array_int[i..j].to_a
    end
  end

  sub_array.delete_if{ |i| i.length == 0}
  #puts sub_array.to_s
  

  sub_array.each do |i|
    if i.is_a? Array
      sub_sum =  i.inject(:+)
      if( sub_sum > sum)
        sum = sub_sum
      end
    elsif sum < i && i != nil 
      sum = i
    end
  end
  puts sum
end