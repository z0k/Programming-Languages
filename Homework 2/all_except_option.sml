val test1 = all_except_option("string", ["string"]) = SOME []
val test2 = all_except_option("", ["string"]) = NONE
val test3 = all_except_option(" ", ["string"]) = NONE
val test4 = all_except_option("string", ["hello", "buffalo", "terrible"]) = NONE
val test5 = all_except_option("string", ["string", "buffalo", "terrible"]) =
  SOME ["buffalo", "terrible"]
val test6 = all_except_option("string", ["buffalo", "string", "terrible"]) =
  SOME ["buffalo", "terrible"]
val test7 = all_except_option("string", ["string", "string", "string"]) =
  SOME []
