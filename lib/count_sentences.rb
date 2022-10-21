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
    #add a filter to only count sentences that are not empty.
    self.split(/[.!?]/).filter {|sentence| !sentence.empty?}.length
  end
  binding.pry
end
