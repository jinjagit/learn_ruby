class Timer
  def initialize
        @seconds = 0
  end

  attr_accessor :seconds

  def time_string
    def pad_string(string)
      if string.length == 1
        string = "0" + string
      end

      string
    end

    mins = "00"
    hours = "00"
    secs = (@seconds % 60).to_s
    secs = pad_string(secs)

    if seconds > 59
      mins = @seconds / 60.floor
      mins = (mins % 60).to_s
      mins = pad_string(mins)
    end

    if seconds > 3600
      hours = (@seconds / 3600.floor).to_s
      hours = pad_string(hours)
    end

    time = hours + ":" + mins + ":" + secs
  end

end
