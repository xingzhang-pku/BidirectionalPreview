module Utils exposing (..)

import List exposing (..)


findIndex : String -> List (Int, String) -> Int
findIndex s env =
    case env of

        (n, x) :: env_ ->
            if s == x then n else findIndex s env_

        [] -> -1


nth : Int -> List a -> Maybe a
nth n ls =
    case n of
        0 -> head ls
        _ -> 
            case (tail ls) of
                Just ls_ -> nth (n - 1) ls_
                _ -> Nothing