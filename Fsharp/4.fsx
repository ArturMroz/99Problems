// Find the number of elements of a list.
// https://wiki.haskell.org/99_questions/1_to_10


let myLength = List.length

let myLength' xs =
    let rec myLenghtRec acc = function
        | [] -> acc
        | _ :: xs -> myLenghtRec (acc + 1) xs

    myLenghtRec 0 xs

myLength [ 1; 2; 3 ]
