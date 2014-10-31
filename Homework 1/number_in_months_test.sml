val test_number_in_month_1 = number_in_months([ (1994, 10, 1)], [10, 1]) = 1
val test_number_in_month_2 = number_in_months([(1,1,1)], []) = 0
val test_number_in_month_3 = number_in_months([( 1994, 1, 1),( 1994, 10, 1), ( 1994, 10, 1)], [1, 10]) = 3
val test_number_in_month_4 = number_in_months([( 1994, 10, 1),( 1994, 10, 1), ( 1994, 10, 1), (2000, 9, 3)], [10, 8]) = 3

val test3 = number_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3
