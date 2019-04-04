// Find the K'th element of a list. The first element in the list is number 1.
// https://wiki.haskell.org/99_questions/1_to_10


let elementAt xs n =
    xs |> List.item (n - 1)

let elementAt' (xs : 'a list) n =
    xs.[n - 1]

let rec elementAt'' xs n =
    match xs, n with
    | [], _ -> failwith "empty list"
    | x :: _, 1 -> x
    | _ :: xs, n -> elementAt'' xs (n - 1)
