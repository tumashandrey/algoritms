require 'pry'
class ListNode
 attr_accessor :val, :next
 def initialize(val)
   @val = val
   @next = nil
 end
end

def merge_k_lists(lists)
  return [] if lists.nil?  
  new_list = Array.new
  loop do 
    break if lists == nil
    new_list << lists.val
    lists = lists.next
  end
  new_list.flatten.sort
end
#[[1,4,5],[1,3,4],[2,6]]
input_list = [[1,4,5,[1,2,3,4,1000]],[1,3,4,[22,4000,100000000]],[2,6]]
lists = ListNode.new(input_list)
puts "Output: #{merge_k_lists(lists)}" 
