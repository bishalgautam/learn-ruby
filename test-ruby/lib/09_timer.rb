class Timer

def initialize(sec = 0)
    @timer = sec
end

#getter
def seconds
    @timer
end

#setter
def seconds=(sec)
    @timer = sec
end

def time_string
    Time.at(seconds).strftime("%H:%M:%S")     
end

end
