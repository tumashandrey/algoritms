def length_of_longest_substring(input_string) 
 result = Array.new
 string = ''
 input_string.chars.each do |value|
  if string.include?(value)
     result << string
     string = value
   else
     string += value
   end 
 end
 result << string
 puts "Output: #{result.max{ |a, b| a.length <=> b.length }.size}"
end
length_of_longest_substring("pwwkew")

def anograms(input_array_data)
  array = Array.new
  hash = Hash.new([])
  input_array_data.each.with_index do |val, index|
    hash[val.downcase.chars.sort.join] += ["#{val}"] 
  end
  puts "Output: #{hash.values}"
end
array = ["eat", "tea", "tan", "ate", "bat"]
#anograms(array)











