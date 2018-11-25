class PigLatinizer
  attr_reader :piglatinized_text
  
  def vowel?(char)
    "aeiouAEIOU".include?(char)
  end


  def piglatinize(user_input)
    words = user_input.split
    words.collect do |word|
      if vowel?(word[0])
        word += "way"
      else
        until vowel?(word[0]) do
          word = word[1..-1] + word[0]
        end
        word = word + "ay"
      end
    end.join(" ")
  end


end
