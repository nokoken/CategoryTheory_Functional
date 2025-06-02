import Product

main :: IO ()
main = do
    putStrLn "Testing factor x1 x2 on all SetX value:"
    mapM_ printResult [X1, X2, X3, X4]

printResult :: SetX -> IO ()
printResult x = do
    let result = factor x1 x2 x
    putStrLn $ show x ++ " -> " ++ show result
