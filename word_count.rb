class Phrase
  REGEX = /\b[\w']+\b/i.freeze

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, counter|
      counter[word] += 1
    end
  end

  private

  def words
    @sentence.downcase.scan(REGEX)
  end
end
