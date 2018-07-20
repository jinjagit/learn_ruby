def echo(string)
  string
end

def shout(string)
  string = string.upcase
end

def repeat(string, number = 2)
  result = string + " " + string

  if number > 2
    end_string = ""
    (number - 1).times{end_string = end_string + " " + string}
    result = string + end_string
  end

  result
end

def start_of_word(string, number)
  result = string.slice(0...number)
end

def first_word(string)
  split_string = string.split
  result = split_string[0]
end

def titleize(string)
  split_string = string.split
  words = []
  little_words = ["and", "the", "over"]

  split_string.each do |word|
    if (little_words.include? word) == true && words != []
      words.push(word)
    else
      words.push(word.capitalize)
    end
  end

  result = words.join(" ")
end
