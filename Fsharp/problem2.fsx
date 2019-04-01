// Find the last but one element of a list.
// https://wiki.haskell.org/99_questions/1_to_10


let rec myButLast = function
    | [] -> failwith "empty list"
    | [ _ ] -> failwith "list contains only 1 element"
    | [ x; _ ] -> x
    | xs -> myButLast xs

let myButLast' xs =
    xs |> List.rev |> List.tail |> List.head
