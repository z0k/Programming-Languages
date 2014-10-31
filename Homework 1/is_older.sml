fun is_older (date_1 : (int * int * int), date_2 : (int * int * int)) =
  let
    val year_check = #1 date_1 = #1 date_2
    val month_check = #2 date_1 = #2 date_2
  in
    if year_check andalso month_check then #3 date_1 < #3 date_2
    else if year_check then #2 date_1 < #2 date_2
    else #1 date_1 < #1 date_2
  end
