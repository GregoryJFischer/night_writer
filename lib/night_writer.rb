require_relative 'let_to_bra'

i_file_name = ARGV[0]
o_file_name = ARGV[1]

i_file = File.open(i_file_name, 'r')
o_file = File.open(o_file_name, 'w')

i_text = i_file.read

to_braille = LetToBra.new

o_text = to_braille.final_text(i_text)

o_file.write(o_text)

p "Created '#{o_file_name}' containing #{i_text.length} characters"
