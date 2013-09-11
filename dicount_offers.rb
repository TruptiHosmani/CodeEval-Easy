def ss_mapping(customer,product)
  ss = 1
  product_length = product.downcase.scan(/[a-z]/).count
  customer_length = customer.downcase.scan(/[a-z]/).count
  customer_vowels =  customer.downcase.scan(/[aeiouy]/).count 
  customer_consonants = customer.downcase.gsub(/\s+/, "").scan(/[^aeiouy]/).count 
  common_factor = customer_length.gcd(product_length)
  
  if common_factor > 1
    ss = ss * 1.5
  end

  if product_length%2 == 0
    ss = ss * 1.5 * customer_vowels
  else
    ss = ss * 1 * customer_consonants
  end

  ss
end

def sub_array(xs, rows, columns)
  xs[rows].map { |row| row[columns] }
end

def rotate(matrix)
  for i in 0..(matrix.length-1)
    matrix[i] << matrix[i].shift
  end
  matrix
end

def ss_prod_cust_combinations(matrix)
  ss_combination_values = []
  matrix.each_with_index do |row, i|
    
    ss_combination_values <<  (0..(matrix.length-1)).collect{|i|matrix[i][i]}.to_a
    matrix << matrix.shift

    transposed = matrix.transpose
    transposed << transposed.shift
    ss_combination_values <<  (0..(transposed.length-1)).collect{|i|transposed[i][i]}.to_a

    rev = transposed.reverse
    rev << rev.shift
    ss_combination_values <<  (0..(rev.length-1)).collect{|i|rev[i][i]}.to_a
    #puts matrix.to_s
  end
  ss_combination_values
end

def get_maxSS(ss_combination_values)
  ss_combination_values.uniq!
    #puts "combinations " +ss_combination_values.to_s
    max  = 0
    ss_combination_values.each do |combination| 
      combination.each do |combo|
        #puts "combinations " +combo.to_s
        sum  = combo.inject(:+)
        if sum > max
          max = sum
          #puts combination.to_s + " :" +sum.to_s
        end 
      end
    end
  max
end

# for each line in the file get product and customer 
File.open(ARGV[0]).each_line do |line|
  ss_array = []
  matrix =[]
  if line.length != 0
    customers, products = line.split(';').map{|x| x.strip.split(',')}
    customers.each do |customer|
      products.each do |product|
        ss_array << ss_mapping(customer,product)
      end
    end
    
    #covert ss_array into 2d array 
    0.upto(products.length-1) do |i|
      matrix << ss_array[i*products.length..(i*products.length)+products.length-1]
    end

    #find all the possible combinations of customer product sses
    combination = []
    combination << ss_prod_cust_combinations(matrix)
    for i in 0..matrix.length-1
      rotated_matrix = rotate(matrix)
      combination << ss_prod_cust_combinations(rotated_matrix)
    end

    # get the max sses for the combination of product and customer
    max  = get_maxSS(combination)
    printf "%.2f\n" , max
    
  end

end
