fun number_in_months ( dates : (int * int * int) list, months : int list) =
  if null months then 0
  else number_in_month( dates, hd months) + number_in_months(dates, tl months)
