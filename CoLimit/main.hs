import FiberCoProduct

main :: IO ()
main = do
    let fiberco = fibercoproduct a1 a2 a0s a1s a2s
    putStrLn "fibercoproduct の結果:"
    mapM_ print fiberco
