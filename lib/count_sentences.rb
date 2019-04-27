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
  	array = []
  	updated = self.split
  	updated.each do |index|
  		if index.sentence? == true
  		  array << index
  	  elsif index.question? == true
  	  	array << index
  	  elsif index.exclamation? == true
  	  	array << index
  	  end
  	end
  	  array.length
  	end
end

# cool = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")

# binding.pry
