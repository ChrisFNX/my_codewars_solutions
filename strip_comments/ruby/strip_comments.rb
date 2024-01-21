def solution(input, markers)
  seperator = "\n"
  new_string = []
  input.split(seperator).each do |line|
    new_string << line.split(Regexp.union(markers)).first.strip
  end
  new_string.join("\n")
end