# Write a program that asks for a sentence. Then ask for their favorite word in that sentence. Then tell them what index that word starts at. See the Ruby Docs page for String for a handy method to use. 

puts "Give me a sentence:" 
sentence = gets.chomp

puts "What's your favorite word in that sentence?"
favorite = gets.chomp

word_index = sentence.index(favorite)
puts "Your favorite word is at index #{word_index}"

sentence_array = sentence.split(" ")
word_number = sentence_array.index(favorite) + 1
puts "Your favorite word is the ##{word_number} word in the sentence"
