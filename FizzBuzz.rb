File.open(ARGV[0]).each_line do |line|
  #puts "#{line}"
  array_of_numbers = line.split
  a  = array_of_numbers[0].to_i
  b = array_of_numbers[1].to_i
  1.upto(array_of_numbers[2].to_i) do |n|
    
    print " #{'F' if n % a == 0}#{'B' if n % b == 0}#{n if n % a != 0 && n % b != 0}"   
  end
  puts ""
end 