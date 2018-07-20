class Book
  # the 'def def_name=(arg)' form allows setting of @title from commands like
  # @book.title = "stuart little". In these cases, the argument provided is then
  # passed to titleize() for formatting
  def title=(string)
  	@title = self.titleize(string)
  end

  def title
  	@title
  end

  def titleize(string)
    split_string = string.split
    words = []
    little_words = ["and", "the", "over", "in", "of", "a", "an"]

    split_string.each do |word|
      if (little_words.include? word) == true && words != []
        words.push(word)
      else
        words.push(word.capitalize)
      end
    end

    result = words.join(" ")
  end

end
