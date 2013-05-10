class Book

  def title=(new_title)
    @new_title = new_title
  end
  
  def title
    word_array = @new_title.split(" ")
    word_array.collect! do |word| 
      if['and','in','the','a','of', 'an'].include? word
       word
      else
        word.capitalize
      end
    end
     word_array.join(" ").capitalize[0] + word_array.join(" ")[1..-1] 
  end  
end


