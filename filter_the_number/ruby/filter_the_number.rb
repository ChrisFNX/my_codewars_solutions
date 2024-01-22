def filter_string(string)
  string.scan(/\d+/).join.to_i
end