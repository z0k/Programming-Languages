fun dates_in_months (dates : (int * int * int) list, months : int list) =
  if null months then []
  else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)
