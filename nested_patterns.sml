exception ListLengthMismatch


fun old_zip3(l1, l2, l3) =
  if null l1 andalso null l2 andalso null l3 then []
  else if null l1 orelse null l2 orelse null l3 then raise ListLengthMismatch
  else (hd l1, hd l2, hd l3) :: old_zip3(tl l1, tl l2, tl l3)


fun zip3 (list_triple) =
  case list_triple of
    ([],[],[]) => []
  | (hd1::tl1, hd2::tl2, hd3::tl3) => (hd1, hd2, hd3)::zip3(tl1, tl2, tl3)
  | _ => raise ListLengthMismatch


fun unzip3 lst =
  case lst of
    [] => ([], [], [])
  |(a,b,c)::tl => let val (l1, l2, l3) = unzip3 tl
                  in
                    (a::l1, b::l2, c::l3)
                  end
