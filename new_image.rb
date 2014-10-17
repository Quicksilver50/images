#ger file name from the user
#*puts "Give an images file path to change"
#f=gets.to_s
require "./image_array.rb"
accepted_formats = [".jpg", ".png"]
print "Enter graphic filename: "
inp = gets.chomp
#puts "The string has #{inp.size} characters"
if  accepted_formats.include?(File.extname("#{inp}"))
puts "File: #{inp} has the right extension"



else
puts "File: #{inp} is not a .jpg or .png file"
end




