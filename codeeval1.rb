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

def prime?(number)
  for i in 2..(number-1)
    if (number%i == 0)
      return false
    end
  end
  return true
end

def biggest_palindrome_under_1000
  1000.downto(1) do |n|
    if(n == n.to_s.reverse.to_i && prime?(n) == true)
      puts n
      return
    end
  end
end

def sum_of_first_1000_primes
  count,sum = 0,0
  start = 2
  while count < 1000 do
    if (prime?(start) == true)
      sum+= start
      count+= 1
    end
    start+= 1
  end
  puts sum
end

sum_of_first_1000_primes
biggest_palindrome_under_1000