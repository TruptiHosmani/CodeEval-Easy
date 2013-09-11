#=begin
def find_cycle(numbers)
  c, cycle = {}, Array.new()
  for i in 0..(numbers.length-1)
    for j in 0..(numbers.length/2+2)
      if numbers[i..j].length != 0
        if (!c.has_key?(numbers[i..j]))
          c[numbers[i..j]] = 1
        else 
          c[numbers[i..j]] += 1
        end
      end
    end
  end
  input = c.delete_if{|k,v| (v <= 1) || ( k.size == 1)}.keys.sort {|a, b| c[b] <=> c[a]}
  puts c.to_s
  input.each do |row|
    if cycle.length < row.length
      cycle << row
    end
  end
  if cycle.length > 0
    return cycle.last 
  end
  nil
end
#=end
=begin
def find_cycle seq
  seen = {}

  seq.each_with_index do |x,i|
    return seq[seen[x]..i-1] if seen.has_key? x
    seen[x] = i
  end
  nil
end
=end

File.open(ARGV[0]).each_line do |line|
  numbers =  line.strip.split(" ").map(&:to_i)
  cycle = find_cycle(numbers)
  puts cycle.join(' ') if cycle
  
end