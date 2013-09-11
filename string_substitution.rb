def string_substitution(stringSub, find, replace)
  return stringSub if find.empty? || replace.empty?

  #find all the indices of the find begin
  index = Array.new
  for i in 0..find.length-1
    if index.empty?
      index << (stringSub.index find[i])
    else
      temp = (stringSub.index(find[i],index[i-1]) )
      if index.include?(temp)
        index << temp
      end
    end 
  end
  puts "index is "+ index.to_s
end

File.open('/Users/trupti.hosmani/Developer/test.txt').map(&:strip).each do |line|
  splitParts = line.split ";"
  stringToBeReplaced = splitParts[0];
  FnRn = splitParts[1].split ","
  fn = Array.new 
  rn = Array.new 
  puts "string = " + stringToBeReplaced + "part II = " + FnRn.to_s
  for i in (0..(FnRn.length/2)-1)
    fn << FnRn[2*i]
    rn << FnRn[2*i + 1]
  end

  puts string_substitution stringToBeReplaced, fn , rn
end