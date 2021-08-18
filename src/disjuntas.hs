-- Dupla: Ana Julia Velasque e Pedro Vaz

disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] n = True
disjuntas (x:xs) n
    | existe x n == True = False
    | otherwise = disjuntas xs n

existe:: Int -> [Int] -> Bool
existe _ [] = False
existe x (y:ys)
    | x == y    = True
    | otherwise = existe x ys

main = do
print("Resultado: ", disjuntas [1,2,3] [5,4,6,0])