
def measure(n = 1, &block)
  full_time = 0
  n.times do |a|
    @start_time = Time.now
    yield
    @end_time = Time.now
    full_time += @end_time-@start_time
  end
  
  full_time/n
  
end



