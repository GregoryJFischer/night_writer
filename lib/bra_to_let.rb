require_relative 'braille'

class BraToLet
  include Braille

  def convert(string)
    final = ''

    rows = string.split("\n")

    i = 0
    all_rows = []
    row_set = []
    
    while i < rows.length do
      row_set << rows[i]  
      row_set << rows[i+1]  
      row_set << rows[i+2]

      all_rows << row_set
      row_set = []
      i += 3
    end

    grouped_rows = all_rows.map do |set|
      set.map do |row|
        row.scan(/.{2}/)
      end
    end

    lines = grouped_rows.map do | row |
      row.transpose    
    end

    lines.each do |line|
      line.each do |character|
        final += n_by_b[character]
      end
    end
    final
  end

  def end_message(file_name, file_length)
    p "Created '#{file_name}' containing #{file_length} characters"
  end
end