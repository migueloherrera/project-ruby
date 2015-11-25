def translate(words)
  vowels = "aeiou"
  consonants = "bcdfghjllmnpqrstvwxyz"
  w = words.split(" ")
  r = []
  w.each do |x| 
    s = x[0]
    # starts with a vowel
    if vowels.include? s
      r << "#{x}ay" 
    elsif x[0..1] == "qu"
      r << "#{x[2..-1]+x[0..1]}ay"
    elsif x[1..2] == "qu"
      r << "#{x[3..-1]+x[0..2]}ay"
    elsif (consonants.include? x[1])
      if (consonants.include? x[2])
        r << "#{x[3..-1]+x[0..2]}ay"
      else
        r << "#{x[2..-1]+x[0..1]}ay"
      end
    else
      r << "#{x[1..-1]+x[0]}ay"
    end
  end
  r.join(" ")
end

