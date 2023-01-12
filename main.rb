# prompt to enter text and enables input
puts "Enter a text: "
text = gets.chomp

# By calling the .split method on text, we can transform it into an array.
words = text.split(" ")
# Create a hash called frequencies in the editor. Give it a default value of 0.
frequencies = Hash.new(0)
# we want to iterate over words to add each word to our frequencies hash, one at a time.
words.each { |word| frequencies[word] += 1 }
# Now we need to figure out a way to get our information in the order we want it.
frequencies = frequencies.sort_by do |word,frequencies|
  frequencies
end
frequencies.reverse!
# Finally, we’ll need to iterate over the array to print out each key-value pair to the console.
frequencies.each do |word,frequencies|
# Note that we must first convert the frequencies from a number to a string using .to_s before we can concatenate it.
  puts word + " " + frequencies.to_s
end
