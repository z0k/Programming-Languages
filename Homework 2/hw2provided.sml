(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* put your solutions for problem 1 here *)
fun all_except_option(str, str_lst) =
  let
    fun all_except(str, str_lst) =
      case str_lst of
        [] => []
      | x::xs' =>
          if List.all (fn item => item <> str) str_lst then []
          else if same_string (x, str) then xs'
          else x :: all_except(str, xs')
  in
    case all_except(str, str_lst) of
      [] => NONE
    | x::xs' => SOME (all_except(str, str_lst))
  end


fun get_substitutions1(substitutions, s) =
  case substitutions of
    [] => []
  | x :: xs' =>
      let
        val all_except_value = all_except_option(s, x)
      in
        case all_except_value of
          NONE => []
        | SOME all_except_value => all_except_value @ get_substitutions1(xs', s)
      end


fun get_substitutions2(substitutions, s) =
  let
    fun aux(substitutions, s, acc) =
      case substitutions of
        [] => acc
      | x :: xs' =>
          let
            val all_except_value = all_except_option(s, x);
          in
            case all_except_value of
              NONE => []
            | SOME all_except_value => aux(xs', s, all_except_value @ acc)
          end
  in
    aux(substitutions, s, [])
  end


(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

(* put your solutions for problem 2 here *)
