File.open(ARGV[0]).each_line do |line|
  input_uniq = line.chomp.downcase.gsub(/\W+/, '').split('').uniq.sort
  res = ("a".."z").to_a - input_uniq if input_uniq != nil
  puts (res.length == 0 ) ? "NULL" : res.join("") if res != nil
end