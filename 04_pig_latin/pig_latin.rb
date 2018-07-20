def translate(string)

  def transform_word(word)
    def count_consonants(word, vowels)
      consonants = 0
      while (vowels.include? word[consonants]) != true
        if word[consonants] == "q"
          consonants = consonants + 2
        else
          consonants = consonants + 1
        end
      end

      consonants
    end

    vowels = ['a', 'e', 'i', 'o', 'u']

    if (vowels.include? word[0]) != true
      consonants = count_consonants(word, vowels)
      end_string = word[0...consonants] + "ay"
      word = word[consonants...(word.length)] + end_string
    else
      word = word + "ay"
    end

    word
  end

  word_list = string.split
  new_word_list = []
  number = 0

  while number < word_list.length
    new_word_list.push(transform_word(word_list[number]))
    number = number + 1
  end

  result = new_word_list.join(" ")
end
