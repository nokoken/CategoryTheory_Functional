import FiberProduct
main :: IO ()

main = do
    let fiber = fiberProduct a1 a2 a1s a2s
    putStrLn "全ファイバ積のペア（共通値, A1の値, A2の値）:"
    mapM_ print fiber

    putStrLn "\nVaを共有するファイバ:"
    mapM_ print (getFiber Va fiber)

    putStrLn "\nVbを共有するファイバ:"
    mapM_ print (getFiber Vb fiber)