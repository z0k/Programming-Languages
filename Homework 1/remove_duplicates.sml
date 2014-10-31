fun delete(x,[]) = []
  | delete(x,y::l) = if x=y then delete(x,l) else y::delete(x,l);

fun remove_dup [] = []
  | remove_dup (x::l) = x::remove_dup(delete(x,l));

fun number_in_months_challenge( dates : (int * int * int) list, month : int list) =
  number_in_months( remove_dup(dates), remove_dup(month))
