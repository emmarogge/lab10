(*
                              CS51 Lab 9
                         Substitution Semantics
                                Tests

 *)

open Lab10 ;;
open CS51 ;;
open List ;;


let test_random_list () =
  unit_test (List.length (random_list 1) = 1) "random_list one";
  unit_test (List.length (random_list 10) = 10) "random_list ten";
  unit_test (List.length (random_list 100) = 100) "random_list one hundred";;

let test_time_sort () =
  unit_test_within
    0.001
    (time_sort (InsertSort.sort (<)) [3;1;7;2;3])
    0.0015
    "time_sort InsertSort pos";

  unit_test_within
    0.000001
    (time_sort (InsertSort.sort (<)) [3;1;~-7;2;~-3])
    0.000003
    "time_sort InsertSort neg";

  unit_test_within
    0.001
    (time_sort (MergeSort.sort (<)) [3;1;~-7;2;~-3])
    0.002
    "time_sort MergeSort neg";;

let test_all () =

  test_random_list();
  test_time_sort  ();;

let _ = test_all () ;;
