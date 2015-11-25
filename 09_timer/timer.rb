class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string
    [@seconds / 3600, @seconds/ 60 % 60, @seconds % 60].map { |t| t.to_s.rjust(2,'0') }.join(':')
  end
end
