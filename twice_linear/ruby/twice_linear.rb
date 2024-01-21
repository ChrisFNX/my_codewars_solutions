def dbl_linear(n)
  result = [1]

  i = 0
  j = 0

  until result.size == n + 1
    list1 = 2 * result[i] + 1
    list2 = 3 * result[j] + 1
    min = [list1, list2].min

    result << min

    i += 1 if min == list1
    j += 1 if min == list2
  end

  result.last
end