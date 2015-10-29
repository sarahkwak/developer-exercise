class Exercise

  def self.marklar(str)
    words = str.split(' ')
    result = []
    marklar = 'marklar'
    words.each do |word|
      if word.length > 4 
        if word[-1] == word[/\W/]
        result.push(marklar + word[-1])
        elsif word[0] == word[/[A-Z]/]
          result.push(marklar.capitalize)
        else word[/[a-z]*/] == word
        result.push(marklar)
        end
      else
        result.push(word)
      end
    end
    result.join(' ')
  end

  def self.even_fibonacci(nth)
    return 2 if nth == 2
    return "Number should be at least 3 to validate fibonacci sequence" if nth < 2
    first = 1
    second = 1
    third = 2
    result = [first, second, third]
    (nth - 3).times do 
      first = second
      second = third
      third = first + second
      result.push(third)
    end
    final = result.map {|num| num if num % 2 == 0 }.compact.reduce(:+)
  end
end
