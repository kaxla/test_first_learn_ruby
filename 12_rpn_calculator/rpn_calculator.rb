class RPNCalculator
  attr_accessor :stack
  
 def initialize
   @stack = []
 end

 def value
   @stack[-1]
 end
 
  def push(n)
    @stack.push(n)
    
  end
  
  def plus
    if @stack.length < 2
      raise "calculator is empty"
    else
    added = @stack[-1] + @stack[-2]
    @stack.pop
    @stack.pop
    @stack.push(added)
    end
  end
  
  def minus
    if @stack.length < 2
      raise "calculator is empty"
    else
    subtracted = @stack[-2] - @stack[-1]
    @stack.pop
    @stack.pop
    @stack.push(subtracted)
    end
  end
  
  def divide
    if @stack.length < 2
      raise "calculator is empty"
    else
    divided = @stack[-2].to_f / @stack[-1].to_f
    @stack.pop
    @stack.pop
    @stack.push(divided)
    end
  end
  
  def times
    if @stack.length < 2
      raise "calculator is empty"
    else
    multiplied = @stack[-2] * @stack[-1]
    @stack.pop
    @stack.pop
    @stack.push(multiplied)
    end
  end
  
  def tokens(tok_string)
    tok_string.split.map do |x|
      case x
      when '+', '-', '*', '/'
        x.to_sym
      else
        x.to_i
      end
    end
  end
  
  def evaluate(str)
    tokens(str).each do |t|
       case t
       when :+
         plus
       when :-
         minus
       when :*
         times
       when :/
         divide
       else
         push(t)
       end
     end
       value
    end
  end
  
 

