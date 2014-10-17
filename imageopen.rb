#ger file name from the user
#*puts "Give an images file path to change"
#f=gets.to_s
require "./image_array.rb"
accepted_formats = [".jpg"]
print "Enter graphic filename: "
inp = gets.chomp
#Ask the user for what kind of edits
puts "What kind of edit? (1) for B&W, (2) for random noise, (3) to change to RGB values to 500, 600, 1000"
value=gets.to_i
value_range=[1,2,3]
#puts "The string has #{inp.size} characters"
if File.exist?("#{inp}") and  accepted_formats.include?(File.extname("#{inp}")) and value_range.include?(value)
puts "File: #{inp} exists and has the right extension, working ....."
img = ImageArray.new("#{inp}")

	if value==1
	img.each do |row|
		row.each do |pixel|
			pixel_gray = (pixel.red+pixel.blue+pixel.green)/3
			pixel.red = pixel_gray
			pixel.green = pixel_gray
			pixel.blue = pixel_gray
			end
		end

	end
	if value==2
		img.each do |row|
        		row.each do |pixel|
                	pixel_random = (pixel.red+pixel.blue+pixel.green)*3
               		pixel.red = pixel_random
               		pixel.green = pixel_random
			pixel.blue = pixel_random
				end
			end
	end

	 if value==3
                img.each do |row|
                        row.each do |pixel|
                        pixel.red = 500
                        pixel.green = 600
                        pixel.blue = 1000
                                end
                        end
        end
#write image with name+New and same extenstion	
img.write(File.basename("#{inp}",File.extname("#{inp}"))+"New"+File.extname("#{inp}"))

else
puts "File: #{inp} does not exist or is not a .jpg file, or value is not valid"
end
