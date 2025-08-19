module CalcWithOutput where

newtype T a = T {unT :: String -> (a, String)}

eta :: a -> T a
eta x = T (\s -> (x, s))

sharp :: (a -> T b) -> (T a -> T b)
sharp f h = 
    T (\st -> let
                    (y, st2) = unT h st
                    (z, st3) = unT (f y) st2
                in
                    (z, st3))

f1 :: Integer -> T Integer
f1 x = T (\s -> (x^2,
                 s ++ show x ++ "^2=" ++ show (x^2) ++
                 ".\n"))

f2 :: Integer -> T Float
f2 x = T (\s -> (sqrt(fromInteger x),
                 s ++
                 "sqrt of" ++ show x ++
                 "is" ++ show (sqrt(fromInteger x)) ++
                 ".\n"))

testAges = [(v, s) | v <- [10, 100],
                     s <- ["", "---", "hello"]]

test2f1 = [ unT (sharp eta (f1 v)) s == unT (f1 v) s |
            (v, s) <- testAges]

test2f2 = [ unT (sharp eta (f2 v)) s == unT (f2 v) s |
            (v, s) <- testAges]

test11 = unT ((sharp f1 . eta) 10) "" == unT (f1 10) ""
test11detail = unT ((sharp f1 . eta) 10) ""

test12 = unT ((sharp f2 . eta) 10) "" == unT (f2 10) ""
test12detail = unT ((sharp f2 . eta) 10) ""

test21 = unT ((sharp f1 . eta) 10) "" == unT (f1 10) ""
test22 = unT ((sharp f2 . eta) 10) "" == unT (f2 10) ""

test31 = unT ((sharp f2 . sharp f1) (eta 10)) "" == 
         unT (sharp (sharp f2 . f1) (eta 10)) ""

test3 = [unT ((sharp f2 . sharp f1) (eta v)) s == 
         unT (sharp (sharp f2 . f1) (eta v)) s |
         (v, s) <- testAges ]
         
(xTest1, stTest1) =
    (unT $ sharp f2 $ sharp f1 $ eta 10) ""