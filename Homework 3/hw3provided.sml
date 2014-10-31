(* Coursera Programming Languages, Homework 3, Provided Code *)

exception NoAnswer

datatype pattern = Wildcard
		 | Variable of string
		 | UnitP
		 | ConstP of int
		 | TupleP of pattern list
		 | ConstructorP of string * pattern

datatype valu = Const of int
	      | Unit
	      | Tuple of valu list
	      | Constructor of string * valu

fun g f1 f2 p =
    let 
	val r = g f1 f2 
    in
	case p of
	    Wildcard          => f1 ()
	  | Variable x        => f2 x
	  | TupleP ps         => List.foldl (fn (p,i) => (r p) + i) 0 ps
	  | ConstructorP(_,p) => r p
	  | _                 => 0
    end

(**** for the challenge problem only ****)

datatype typ = Anything
	     | UnitT
	     | IntT
	     | TupleT of typ list
	     | Datatype of string

(**** you can put all your code here ****)
fun only_capitals xs =
  List.filter (fn x => (Char.isUpper o String.sub) (x, 0)) xs


fun longest_string1 xs =
  foldl (fn (x,y) => if String.size x > String.size y then x else y) "" xs


fun longest_string2 xs =
  foldl (fn (x,y) => if String.size y > String.size x then y else x) "" xs


fun longest_string_helper f xs =
  0


val longest_capitalized = (longest_string1 o only_capitals)


fun rev_string s =
  let
    val x = map Char.toString (explode s)
  in
    (concat o rev) x
  end
