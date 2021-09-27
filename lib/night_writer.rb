require_relative 'let_to_bra'
require_relative 'bra_to_let'

i_file_name = ARGV[0]
o_file_name = ARGV[1]

i_file = File.open(i_file_name, 'r')
o_file = File.open(o_file_name, 'w')

i_text = i_file.read

to_braille = LetToBra.new
to_text = BraToLet.new

if i_text.include?("0")
  o_text = to_text.convert(i_text)
  to_text.end_message(o_file_name, o_text.length)
else
  o_text = to_braille.final_text(i_text)
  to_braille.end_message(o_file_name, i_text.length)
end

o_file.write(o_text)