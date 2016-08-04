# A Ruby program that will ask a user for a string (a sentence), ask the user if any words in the sentence should be redacted, and then return the original string with the redacted words removed.

# Ask the user what their sentence is
puts "What is the sentence you'd like to censor from? (All lowercase and no punctuation please)"
sent = gets.chomp

# Ask the user for their desired redacted word
puts "What is the word you would like to censor?"
r_word = gets.chomp


## Execute conversion of sentence:
# Convert the sentence into an array
sent_array = sent.split(" ")

# Initialize empty array for new sentence
new_sent_array = []

# Check each element in the array if it's equal to redacted word
sent_array.each do |word|

  # If it is, then append "REDACTED" to the new array
  if word == r_word
    new_sent_array.push("REDACTED")
  # If it isn't, then append the word as it is to the new array
  else
    new_sent_array.push(word)
  end

end


# Now collapse the elements new array into one string/sentence

new_sent = new_sent_array.join(" ")

## Conversion complete, return the new string

p new_sent

## IDEAS for improvement:
# Account for punctuation?
# Redact case insensitive?