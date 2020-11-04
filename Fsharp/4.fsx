// Find the number of elements of a list.
// https://wiki.haskell.org/99_questions/1_to_10

let myLength = List.length

let rec myLength' = function
    | [] -> 0
    | _ :: xs -> myLength' xs + 1

let myLength'' xs =
    xs |> List.fold (fun acc _ -> acc + 1) 0

let myLength''' xs =
    xs |> List.map (fun _ -> 1) |> List.sum

myLength [ 1; 2; 3 ]
