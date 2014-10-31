fun oldest(dates : (int * int * int) list) =
  if null dates then NONE
  else
    let val tl_ans = oldest(tl (dates))
    in if isSome tl_ans andalso is_older(valOf tl_ans, hd dates)
    then tl_ans
    else SOME (hd dates)
    end
