(*
                              CS51 Lab 9
                         Substitution Semantics
                                Tests

 *)

open Lab10 ;;
open CS51 ;;


let unit_test (condition : bool) (msg : string) =
  if condition then print_endline (msg ^ " passed")
  else print_endline (msg ^ " failed");;


let test_random_list () =
  unit_test (List.length (random_list 1) = 1) "random_list one";;

let test_time_sort () =
  unit_test (time_sort (InsertSort.sort (<)) [3;1;7;2;3] = 10.0)
    "time_sort";;

let test_all () =
  test_random_list();
  test_time_sort  ();;

let _ = test_all () ;;
