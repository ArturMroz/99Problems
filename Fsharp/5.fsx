// Reverse a list.
// https://wiki.haskell.org/99_questions/1_to_10


let myReverse xs =
    let rec loop acc = function
        | [] -> acc
        | x :: xs -> loop xs (x :: acc)

    loop [] xs


let myReverse' xs =
    xs |> List.fold (fun acc x -> x :: acc) []
