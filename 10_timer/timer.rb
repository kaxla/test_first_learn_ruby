class Timer

  def seconds=(n)
    @n = n
  end
  
  def seconds
    @n = 0
  end
  
  def time_string
    if @n == 0
      "00:00:00"
   elsif @n < 60
      "00:00:#{sprintf '%02d',@n}"
    elsif @n > 60 && @n < 3600
      "00:#{sprintf '%02d',(@n/60)}:#{sprintf '%02d',(@n%60)}"
    elsif @n > 3600
      "#{sprintf '%02d',(@n/3600)}:#{sprintf '%02d', ((@n-3600)/60)}:#{sprintf '%02d', ((@n-3600)%60)}"
    end  
  end
end




