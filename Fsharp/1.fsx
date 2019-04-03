// Find the last element of a list.
// https://wiki.haskell.org/99_questions/1_to_10


let myLast xs = 
    xs |> List.reduce (fun _ x -> x)

let rec myLast' =
    function
    | [] -> failwith "empty list"
    | [ x ] -> x
    | _ :: xs -> myLast' xs

let myLast'' xs =
    xs
    |> List.rev
    |> List.head
