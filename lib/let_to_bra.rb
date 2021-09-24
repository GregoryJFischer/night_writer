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
end