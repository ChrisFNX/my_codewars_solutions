def josephus(items,k)
  # k is the starting pos and increment val
  return [] if items.empty?
  return items if items.length == 1
  
  i = 0
  k -= 1
  kill_order = []

  items.length.times do
    kill_order << items.delete_at(i = (i + k) % items.length)
  end
  kill_order
end