def expanded_form(num)
  num.digits.each_with_index.map do |value, idx|
    if value > 0
      value * (10 ** idx)
    end
  end.compact.reverse.join(" + ")
end