puts "What is the source file?"
source_file = gets.chomp
puts "What <b>is</b> the destination file?"
des_file = gets.chomp

source_file_contents = IO.read(source_file)
IO.write(des_file, source_file_contents)
#replace file_name and file_contents with the correct variables



