fun add_all_opt(opt_list : int option list) =
  if null opt_list then 0
  else if isSome (hd opt_list) then (valOf (hd opt_list) + add_all_opt(tl opt_list))
  else 0
