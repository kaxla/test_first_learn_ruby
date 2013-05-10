def reverser(&block)
  final_array = []
  array = block.call.split
  array.each do |word|
    final_array.push(word.reverse)
  end
    return final_array.join(" ")
end

def adder (num = 1)
  yield + num
end

def repeater (num = 1)
  n = 1
  while n <= num
  yield
  n += 1
end
  return n
end


