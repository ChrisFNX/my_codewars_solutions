def spin_words(string)
  string.split.map do |word|
    word.length < 5 ? word : word.reverse!
  end.join(" ")
end