import Tree
-- 自然同型の例（充満忠実となっている）

mirror :: Tree a -> Tree a
mirror Empty = Empty
mirror (Node x t1 t2) = Node x (mirror t2) (mirror t1)

main :: IO ()
main = do
    let output = mirror tree1
    print tree1
    print output