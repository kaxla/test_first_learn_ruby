class Array

  def sum
    answer = 0
    self.each do |n|
      answer += n
    end
      answer
  end
  
  def square
    map { |x| x**2}
  end
  
  def square!
    map! { |x| x**2}
  end

end