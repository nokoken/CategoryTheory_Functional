module CoProduct where

data SetA = A7 | A8 | A9 deriving (Enum, Show)
data SetB = Ba | Bb deriving (Enum, Show)
data SetX = X1 | X2 | X3 | X4 | X5 | X6 deriving (Enum, Show)

x1 :: SetA -> SetX
x1 A7 = X1
x1 A8 = X2
x1 A9 = X3

x2 :: SetB -> SetX
x2 Ba = X3
x2 Bb = X4

factor :: (a -> x) -> (b -> x) -> (Either a b -> x)
factor i1 i2 (Left a) = i1 a
factor i1 i2 (Right b) = i2 b