val test1 = only_capitals ["A","B","C"] = ["A","B","C"]
val test2 = only_capitals ["Where", "when", "why"] = ["Where"]
val test3 = only_capitals ["a", "B", "c"] = ["B"]
val test4 = only_capitals ["WHICH", "WHY", "12"] = ["WHICH", "WHY"]
val test5 = only_capitals [] = []
val test6 = only_capitals ["2"] = []
