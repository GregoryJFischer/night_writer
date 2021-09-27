require_relative 'characters'

class LetToBra
  include Characters

  def convert(string)
    chars = string.split('')

    first_line = ''
    second_line = ''
    third_line = ''

    chars.each do |char|
      first_line += b_by_n[char][:first]
      second_line += b_by_n[char][:second]
      third_line += b_by_n[char][:third]
    end

    first_line + "\n" + second_line + "\n" + third_line + "\n"
  end

  def final_text(input)
    final = ""
    split_text = input.scan(/.{1,40}/)

    split_text.each do |text|
      final += convert(text)
    end
    
    final
  end

  def end_message(file_name, file_length)
    p "Created '#{file_name}' containing #{file_length} characters"
  end

  def uppercase?(char)
    if char =~ /[A-Z]/
      true
    else
      false
    end
  end
end