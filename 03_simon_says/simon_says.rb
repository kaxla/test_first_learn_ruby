def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat (word, times = 2)
 ([word] * times).join(" ")
end
  
def start_of_word(word, letters)
  word.slice(0..(letters-1))
end

def first_word(sentence)
  sentence.split(' ').first
end
  
def titleize(words)
  array = words.split
  array.map! do |x|
    if ["the", "and", "a", "of", "over"].include?(x)
      x
    else
      x.capitalize!
    end
  end
  array.first.capitalize!
  array.join(" ")
end



