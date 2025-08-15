module NonDeterMinistic where

type T = ([])

eta :: a -> T a
eta a = [a]

sharp :: (a -> T b) -> T a -> T b
sharp f [] = []
sharp f (x:xs) = f x ++ sharp f xs

testFuncs = [(\x -> [0,x,0]),
            \x -> [0,x,x,0],
            \x -> [0,x,x,x,0]]
            
test1 = map (\f -> (sharp f . eta) 10 == f 10) testFuncs
test1detail = map (\f -> (sharp f. eta) 10) testFuncs


testLists = [[], [1], [2, 3], [4, 5, 6]]

test2 = map (\xs -> sharp eta xs == xs) testLists
test2detail = map (\xs -> sharp eta xs) testLists

test3cases = [(g, f, d) | g <- testFuncs,
                          f <- testFuncs,
                          d <- testLists]

test3 = map (\(g, f, d) ->
                (sharp g . sharp f) d ==
                (sharp (sharp g . f)) d)
            test3cases