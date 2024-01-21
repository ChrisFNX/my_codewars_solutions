def pell(n)
  return n if (0..1).include? n

  a, b, c = [1, 0, 0]
  n.times do
    c = 2 * b + a
    a = b
    b = c
  end

  c
end
