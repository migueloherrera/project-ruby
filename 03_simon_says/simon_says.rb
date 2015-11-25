def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, t = 2)
  word = word + " "
  (word * t).strip
end

def start_of_word(word, limit)
  word[0...limit]
end

def first_word(str)
  str.split(" ")[0]
end

def titleize(sentence)
  little_words = %w(end over and the)
  sentence.capitalize.gsub(/(\w+)/) do |word|
    little_words.include?(word) ? word : word.capitalize
  end
end
