require_relative 'braille'

class BraToLet
  include Braille

  def convert(string)
    final = ''

    rows = string.split("\n")

    split_rows = rows.map { |row| row.scan(/.{2}/) }

    characters = split_rows.transpose

    characters.each do | character |
      final += n_by_b[character]
    end 
    final
  end
end