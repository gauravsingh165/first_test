def question_1(input_string)
    # Return an empty array if given an empty string.this line use for this.
    return [] if input_string.empty?
    result = []
    parts = input_string.split(", ")
  
    parts.each_slice(4) do |name, age, occupation|
      result << { name: name, age: age, occupation: occupation, }
    end
  
   puts result
  end

question_1("John Mayer, 41, Singer, Emily Blunt, 36, Actor,76")
  