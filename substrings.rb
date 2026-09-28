
def substrings(string, dictionary)
  # Jobs to be done of this program:
  # - Remove capitals from user-supplied string
  # - Check if any of the words in the dict. array are contained in the user supplied string
  # - If no, return empty hash
  # - If yes, return how many of each find as separate key: value pairs
  
  # Split input into an array of downcase letters. Specials can remain since include? will catch the pattern even if it isn't an exact match
  user_input = string.downcase.split
  answer = {}

  dictionary.each do |dict_word|
    count = 0   # track how many of the current dict_word live in the user_input

    user_input.each do |user_word|  # loop over the user_input checking each for dict_word
      if user_word.include?(dict_word)
        count += 1
        answer[dict_word] = count
      end 
    end
  end

  return answer
end