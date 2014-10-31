fun month_range(day1 : int, day2 : int) =
  if day1 = day2 then what_month(day2) :: []
  else what_month(day1) :: month_range(day1 + 1, day2)
