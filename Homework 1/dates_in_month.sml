fun dates_in_month (dates : (int * int * int) list, month : int) =
  if null dates then []
  else if #2 (hd dates) = month then hd dates :: dates_in_month (tl dates, month)
  else dates_in_month (tl dates, month)
