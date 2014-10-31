fun same_string(s1 : string, s2 : string) =
    s1 = s2


fun all_except(str, str_lst) =
  case str_lst of
    [] => []
  | x::xs' => if same_string (x, str) then xs'
              else x :: all_except(str, xs')
