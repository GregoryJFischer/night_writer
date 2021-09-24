i_file_name = ARGV[0]
o_file_name = ARGV[1]

i_file = File.open(i_file_name, 'r')
o_file = File.open(o_file_name, 'w')

i_text = i_file.read

#text_fragments = i_text.scan(/.{1,40}/)

o_file.write(i_text)

p "Created '#{o_file_name}' containing #{i_text.length} characters"
