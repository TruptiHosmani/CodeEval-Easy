#Challenge Description:

##You have JSON string which describes a menu. Calculate the SUM of IDs of all "items" in case a "label" exists for an item.
require 'json'
File.open(ARGV[0]).each_line do |line|
  id = 0
  if !line.strip.empty?
    parsed_string = JSON.parse(line) if line.length >= 2
    if parsed_string['menu']['items'].length <= 10
      parsed_string['menu']['items'].each do |items|
        id = id + items['id'] if !items.nil? && !items['label'].nil? && (0..100).include?(items['id'])
      end
    end
    puts id
  end
end 