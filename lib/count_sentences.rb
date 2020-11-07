require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
      self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size 
  end

end
# Your #count_sentences method should use the self keyword
# to refer to the string on which it is called.

# Think about the steps you need to go through to enact the desired behavior:

# .split the string on any and all periods, question marks and exclamation marks
# .count the number of elements that results from that split

# Remember to consider edge cases such as the following sentence:
# "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

# What would happen if we split ^^this^^ sentence on the punctuation characters?
# We would end up with an array that contains empty strings as well as strings containing sentences.
# How would you eliminate empty strings from an array?

