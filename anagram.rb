class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.filter do |anagrams_word|
      modify(anagrams_word) == modify(word) && word.downcase != anagrams_word.downcase
    end
  end

  private

  def modify(epistle)
    epistle.downcase.chars.sort
  end
end
