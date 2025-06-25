import Equalizer

main :: IO ()

main = do
    let eqli = equalizer f g l
    putStrLn "射fとgを用いて移したとき値が等しい始対象を表示:"
    mapM_ print eqli