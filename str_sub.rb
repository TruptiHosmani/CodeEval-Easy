def stringSub str, fnrn
  return str if fnrn.empty?
  first = fnrn.first
  rest = fnrn[1..-1]

  index = str.index first[0]
  if index
    (index == 0 ? '' : stringSub(str[0..index-1], rest)) + first[1] +
      stringSub(str[index+first[0].size..-1], fnrn)
  else
    stringSub(str, rest)
  end
end

File.open(ARGV[0]).map(&:strip).each do |line|
  data = line.split ';'
  stringToBestringSubd = data[0]
  fnrn = data[1].split(',')
  fnrn = (0..fnrn.size/2 - 1).map do |i|
    [fnrn[2*i], fnrn[2*i + 1]]
  end
  puts fnrn.to_s
  puts stringSub stringToBestringSubd, fnrn
end