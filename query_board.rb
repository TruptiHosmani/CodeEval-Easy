def SetCol(q,col,x)
  #q[0..255][j] = Array.new(256,x) 
  q.each_index do |i|
    q.each_index do |j|
      if(j == col)
        q[i][j] = x
      end
    end
  end
end

def SetRow(q,row,x)
  #q[i][0..255] = Array.new(256,x) 
  #puts " #{i}" + q[i][0..255].to_s 
  q.each_index do |i|
    q.each_index do |j|
      if(i == row)
        q[i][j] = x
      end
    end
  end
end

def QueryCol(q,col)
  sum = 0
  q.each_index do |i|
    q.each_index do |j|
      if(j == col)
        sum += q[i][j]
      end
    end
  end
  sum
end

def QueryRow(q,row)
  sum = 0
  q.each_index do |i|
    q.each_index do |j|
      if(i == row)
        sum += q[i][j]
      end
    end
  end
  sum
end
query = Array.new(256,0) { Array.new(256,0) } 
File.open(ARGV[0]).each_line do |line|
  input = line.strip.split(" ")
  #puts input.to_s
  
  case input[0]
  when "SetCol"
    SetCol(query, input[1].to_i, input[2].to_i)
    #puts query.to_s
  when "SetRow"
    SetRow(query, input[1].to_i, input[2].to_i)
    #puts query.to_s
  when "QueryCol"
    puts QueryCol(query,input[1].to_i)
  when "QueryRow"
    puts QueryRow(query,input[1].to_i)
  else
    puts "wrong input"
  end
  
end