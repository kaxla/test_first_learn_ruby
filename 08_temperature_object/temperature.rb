class Temperature
  
  
  def self.from_celsius(cel)
    Temperature.new(:c => cel)
  end
  
  def self.from_fahrenheit(fahr)
    Temperature.new(:f => fahr)
  end
  
  
  def initialize(opts = {})
    @options = opts
  end
  
  def in_fahrenheit
    if @options [:c]
      return @options[:c] * (9.0/5.0) + 32
    else
      return @options[:f]
    end
  end
  
  def in_celsius
    if @options [:f]
      return (@options[:f]-32) * (5.0/9.0)
    else
      return (@options[:c]) 
    end
  end
end
  
class Celsius < Temperature
  def initialize(temp_in_celsius)
    @temp_in_celsius = temp_in_celsius
  end
 
  
  def in_celsius
    @temp_in_celsius
  end

  def in_fahrenheit
    @temp_in_celsius * (9.0/5.0) + 32
  end
end

class Fahrenheit < Temperature
  def initialize (temp_in_fahrenheit)
    @temp_in_fahrenheit = temp_in_fahrenheit
  end
  
  def in_fahrenheit
    @temp_in_fahrenheit
  end
  
  def in_celsius
     (@temp_in_fahrenheit-32) * (5.0/9.0)
  end
end

  
    



#puts Temperature.from_celsius(50).in_celsius