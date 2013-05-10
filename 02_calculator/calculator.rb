
def add(a,b)
  a+b
end

def subtract (c,d)
  c-d
end

def sum(numbers)
  numbers.inject(0) { |x,y| x + y }
end 

public
def multiply(numbers)
  numbers.inject(1) { |x,y| x*y }
end

def power(base,exponent)
  base**exponent
end

def factorial(n)
  if n == 0
    array = [0]
    array.multiply(array)
  else
  g = 0
  array = []
 until g == (n - 1)
    x = n-g
    array.push(x)
    g = g + 1
  end
  array.multiply(array)
end
end

#the solution online had a much simpler way
#of doing the factorial part, but I didn't
#really understand why it worked and it took
#me a really long time to figure this out so
#I'm sticking with it

#And then 2 days later my copy of Learn to Program
#finally showed up and now I understand recursion
#so this is what I would do now

#def factorial(n)
  #if n == 0
    #0
    #elsif n == 1
    #1
    #else
    #n * factorial(n-1)
    #end
#end 







