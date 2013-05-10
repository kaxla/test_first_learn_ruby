class Dictionary
  def entries
    @entries ||= {}
  end
  
  def add(new)
    case new
    when Hash
      entries.merge!(new)
    when String
      entries[new] = nil
    end
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include?(word)
    entries.keys.include?(word)
  end
  
  def find(x)
    result = {}
    entries.each_pair do |word, definition|
      if word =~/^#{x}/
       result[word] = definition 
      end
    end
    result
  end
  
  def printable
    entries.map do |key_val|
          %Q{[#{key_val.first}] "#{key_val.last}"}
        end.sort.join("\n")
  end
end


