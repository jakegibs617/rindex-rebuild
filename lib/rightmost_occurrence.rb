# Below is a method that returns the index of the rightmost occurrence of a given
# character within a given string without using the `String#rindex` method.

# Sample Input
# "big bad bikers", "b"

# Expected Output
# 8


def rindex_method

  puts "type string:"
  string = gets.chomp
  puts "trype letter to find:"
  find_char = gets.chomp

  puts "So the question is, how many character spots in does the righmost occurance of \"#{find_char}\" exist?"
  array = string.chars
  counter = 0
  total_char = string.length - 1
  backwards_array = array.reverse
  if array.include?(find_char) == true
    while  true
      if backwards_array [(0 + counter.to_i)] == find_char.to_s
        puts "the character \"#{find_char}\" is indexed at " + (total_char-counter).to_s + " spots in at the rightmost place"
        break
      else
        counter += 1
      end
    end
  else
    puts "try again, the character \"#{find_char}\" does not exist within the string \"#{string}\""
  end
end
puts rindex_method
