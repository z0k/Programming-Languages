datatype mytype = TwoInts of int * int
                | Str of string
                | Pizza

(* mytype _> int *)
fun f x =
  case x of
    Pizza => 3
  | Str s => String.size s
  | TwoInts(i1,i2) => i1 + i2
