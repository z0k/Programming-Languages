val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)
val test_oldest_1 = oldest([(2,2,28),(2011,3,31),(2011,4,28)]) = SOME (2,2,28)
val test_oldest_2 = oldest([(1994,3,31),(1995,4,28),(2011,3,31),(2014,4,28),(2011,3,31),(2021,4,28)]) = SOME (1994,3,31)
val test_oldest_3 = oldest([(1,1,1),(2,3,3),(2011,4,28)]) = SOME (1,1,1)
val test_oldest_4 = oldest([(2012,2,28),(2017,1,31),(2011,8,98)]) = SOME (2011,8,98)