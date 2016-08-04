def robot_translator(str)

## ROBOT TRANSLATOR method: Take a phrase and translate to robot language, as specified below:
translated_str = ""

str.length.times do |index|
# If a letter is capitalized and in the first half of the alphabet, it becomes "bloop"

    if "ABCDEFGHIJKLM".include?(str[index])
        translated_str += "bloop"

# Otherwise, if a letter is capitalized or it's the letter "e," it becomes "buzz"
    
     elsif "NOPQRSTUVWXYZ".include?(str[index]) || str[index] == "e"
        translated_str += "buzz"
    
# If it's not a letter at all, it becomes "boing"
     
    #dumb way:
    elsif !("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".include?(str[index]))
        translated_str += "boing"
     
# Otherwise, it becomes "beep"

    else
        translated_str += "beep"
        
    end #ends the if statement

end #ends the do statement

return translated_str

end #ends the method definition for robot_translator

  
# OUR DRIVER CODE

# Ask the user for a phrase to translate into robot language.
puts "Enter the phrase you would like to know how to say in robot."
phrase = gets.chomp

p robot_translator(phrase)