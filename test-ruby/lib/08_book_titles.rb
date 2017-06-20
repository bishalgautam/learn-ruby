class Book
  # TODO: your code goes here!
  def intialize (book)
      @title = book
  end
 
  #settter method
  def title=(value)
       smallWords = ["and", "or", "of", "in", "an", "the", "a"]
      @title = value.split.each_with_index.map{|word, index| smallWords.include?(word) && index > 0 ? word : word.capitalize}.join(" ")
  end
   
  def title
      @title
  end

  
end
