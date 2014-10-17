accepted_formats = [".jpg", ".png"]
print "Enter graphic filename: "
inp = gets.chomp
#puts "The string has #{inp.size} characters"
if  accepted_formats.include?(File.extname("#{inp}"))
puts "File: #{inp} has the right extension"
else
puts "File: #{inp} is not a .jpg or .png file"
end


