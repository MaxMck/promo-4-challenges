def array_to_hash(array)
  #TODO: implement the method :)

  hash = Hash.new
  array.each_with_index {|item, index|
    index = yield(index) if block_given?
    hash[index] = item
   }
  hash
end
