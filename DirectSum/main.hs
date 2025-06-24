import CoProduct
main :: IO ()

main = do
    putStrLn "Testing x1:"
    mapM_ (print . x1) [A7, A8, A9]

    putStrLn "\nTest x2:"
    mapM_ (print . x2) [Ba, Bb]

    putStrLn "\nTesting factor x1 x2 with Either values:"
    let testInputs = [Left A7, Left A9, Right Ba, Right Bb]
    mapM_ (\v -> putStrLn $ show v ++ " -> " ++ show (factor x1 x2 v)) testInputs