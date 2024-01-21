def duplicate_encode(word)
  string = ""
  word_lower = word.downcase
  word_lower.split("").each do |letter|
    string << count_occurances(word_lower, letter)
  end
  string
end

def count_occurances(string, character)
  return "(" if string.count(character) == 1

  ")"
end