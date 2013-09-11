def multiplication(n)
  for i in 1..n
    for j in 1..n
      printf "%4d", i*j
    end
    puts ""
  end
 
end

multiplication(12)

