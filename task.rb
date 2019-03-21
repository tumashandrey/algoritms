def length_of_longest_substring(input_string)
  result = 0
  default_index = -1
  hash_map = Hash.new

  input_string.chars.each_with_index do |str_val, index|
    if hash_map[str_val] && hash_map[str_val] > default_index
<<<<<<< HEAD
	  default_index = index
	end
	hash_map[str_val] = index
	next if result > (index - default_index)  
	result = index - default_index 	
=======
      default_index = index
    end
    hash_map[str_val] = index
    result = index - default_index
>>>>>>> c968f7947a820e01cc532421bd433314965ae5e0
  end
  puts "Output: #{result}"
end

length_of_longest_substring('abcabcbb')
#length_of_longest_substring('pwwkewlo')

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











