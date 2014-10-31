fun number_before_reaching_sum (sum : int, numbers : int list) =
  if sum <= hd numbers then 0
  else 1 + number_before_reaching_sum(sum - hd numbers, tl numbers)
