class Dictionary
  # TODO: your code goes here!
  def initialize(options = {})
    @entries = options
  end
  
  def add(object)
    (object.is_a? String) ? entries.merge!(object => nil) : entries.merge!(object) 
  end
  
  def keywords
    entries.keys.sort
  end
  
  def include?(key)
      entries.key?(key)
  end
  
  def find(key)
    entries.select { |keys, value| keys.scan(key).join == key }
  end
  
  def printable
      string =''
    entries.sort.each do |key, value|
        string = string + %Q{[#{key}] "#{value}"\n}
    end
    return string.strip
  end
  
  def entries
  @entries
  end
  
end
