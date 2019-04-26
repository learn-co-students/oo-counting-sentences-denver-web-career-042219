require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.squeeze.count(".!?")
    #The test isnt explicit, in defining what counts as end of sentence puncuation
    #RegEx is suppose to work as well.  Should I have counted the double "!!" as one or two?
  end
end
