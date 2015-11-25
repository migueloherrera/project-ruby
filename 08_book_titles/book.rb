class Book
  attr_accessor :title
  
   def title
    little_words = %w(end over and the a an of in)
    @title.capitalize.gsub(/(\w+)/) do |word|
      little_words.include?(word) ? word : word.capitalize
    end
  end
end
