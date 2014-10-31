fun is_older (date_1 : (int * int * int), date_2 : (int * int * int)) =
  let
    val year_check = #1 date_1 = #1 date_2
    val month_check = #2 date_1 = #2 date_2
  in
    if year_check andalso month_check then #3 date_1 < #3 date_2
    else if year_check then #2 date_1 < #2 date_2
    else #1 date_1 < #1 date_2
  end


fun number_in_month ( dates : (int * int * int) list, month : int) =
  if null dates then 0
  else if #2 (hd dates) = month then 1 + number_in_month(tl dates, month)
  else 0 + number_in_month(tl dates, month)


fun number_in_months ( dates : (int * int * int) list, months : int list) =
  if null months then 0
  else number_in_month( dates, hd months) + number_in_months(dates, tl months)


fun dates_in_month (dates : (int * int * int) list, month : int) =
  if null dates then []
  else if #2 (hd dates) = month then hd dates :: dates_in_month (tl dates, month)
  else dates_in_month (tl dates, month)


fun dates_in_months (dates : (int * int * int) list, months : int list) =
  if null months then []
  else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)


fun get_nth(strings : string list, n : int) =
  if n = 1 then hd strings
  else get_nth(tl strings, n - 1)


fun date_to_string(date : (int * int * int)) =
  let
    val month_names = ["January", "February", "March", "April", "May", "June", 
                      "July", "August", "September", "October", "November", "December"]
  in
    get_nth(month_names, #2 date) ^ " " ^ Int.toString(#3 date) 
    ^ ", " ^ Int.toString(#1 date)
  end


fun number_before_reaching_sum (sum : int, numbers : int list) =
  if sum <= hd numbers then 0
  else 1 + number_before_reaching_sum(sum - hd numbers, tl numbers)


fun what_month(day : int) =
  let
    val days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  in
    number_before_reaching_sum(day, days_in_month) + 1
  end


fun month_range(day1 : int, day2 : int) =
  if day1 > day2 then []
  else if day1 = day2 then what_month(day2) :: []
  else what_month(day1) :: month_range(day1 + 1, day2)


fun oldest(dates : (int * int * int) list) =
  if null dates then NONE
  else
    let val tl_ans = oldest(tl (dates))
    in if isSome tl_ans andalso is_older(valOf tl_ans, hd dates)
    then tl_ans
    else SOME (hd dates)
    end


fun delete(x,[]) = []
  | delete(x,y::l) = if x=y then delete(x,l) else y::delete(x,l);

fun remove_dup [] = []
  | remove_dup (x::l) = x::remove_dup(delete(x,l));

fun number_in_months_challenge( dates : (int * int * int) list, month : int list) =
  number_in_months( remove_dup(dates), remove_dup(month))
