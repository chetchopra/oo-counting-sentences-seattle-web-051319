require 'pry'

class String

  def sentence?
    return self[self.length - 1] == '.'
  end

  def question?
    return self[self.length - 1] == '?'
  end

  def exclamation?
    return self[self.length - 1] == '!'
  end

  def count_sentences
    sentence_count = 0
    self.length.times do |n|
      if self[n] == '!' || self[n] == '?' || self[n] == '.'
        sentence_count += 1
      end
    end
    return sentence_count
  end
  
end