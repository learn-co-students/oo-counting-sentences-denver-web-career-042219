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
    self.gsub(/[!?.]{2,}/){|s|s[0]}.count(".?!")

    # takes .self and uses gsub() function which replaces all matches of a string.  Using RegEx I identified instances within
    # the string where ! or ? or . appear 2 or more times {2,} it then enumerates over those string instances locating the
    # matches. It replaces s which is the identified repeating puncuation with s[0].  s[0] is the first character of the
    # identified string.  this behavior effectivly reduces the repeating puncuation with one character.  Following the
    # gsub actions is the count method which is counting the instances of . ? !.  It returns the number of instances of the new
    # modified and subd string


    # This is how I originally solved it.  The issue I had with the return is it mutated the original string.
    # self.squeeze.count(".!?")
  end
  
end
