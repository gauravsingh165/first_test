def question_4(str)
    result = ''
    str.each_char do |char|
      if char.match?(/[a-yA-Y]/)
        result += char.next
      else
        result += char
      end
    end
   puts  result
  end 
   question_4("hello")    