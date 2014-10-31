fun number_in_month ( dates : (int * int * int) list, month : int) =
  if null dates then 0
  else if #2 (hd dates) = month then 1 + number_in_month(tl dates, month)
  else 0 + number_in_month(tl dates, month)
