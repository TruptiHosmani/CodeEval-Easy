def fibonacci(n)
  if n == 0
    return 0
  end 
  if n == 1
    return 1 
  end

  return fibonacci(n-1) + fibonacci(n-2)
  
end

File.open(ARGV[0]).each_line do |line|
  n =  line.strip.to_i
  #puts n
  puts fibonacci(n)
end
