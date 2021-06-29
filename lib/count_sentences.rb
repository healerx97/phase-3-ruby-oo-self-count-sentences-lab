require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
    
  end

  def question?
    if self[-1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else
      false
    end
  end

  def count_sentences
    count = 0
    spec = "?.!"
    arry = self.split("")
    arry.each do |char|
      asd = arry.find_index(char)
      if (spec.include? char)
        count += 1
      end
      if (spec.include? char) && (arry[asd+1])? (spec.include? arry[asd+1]): false
        count -= 1
      end
    end

    count
  end

end