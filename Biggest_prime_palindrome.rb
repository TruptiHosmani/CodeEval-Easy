# Write a program to determine the biggest prime palindrome under 1000.
# Input 
# Output sample: 929

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

biggest_palindrome_under_1000