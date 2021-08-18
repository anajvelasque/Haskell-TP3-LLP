-- Dupla: Ana Julia Velasque e Pedro Vaz

substituir:: Int -> Int -> [Int] -> [Int]
substituir _ _ [] = []
substituir a b (x:xs)
    | x == a = [b] ++ substituir a b xs
    | otherwise = [x] ++ substituir a b xs

main = do
print("Resultado: ", substituir 1 0 [1,2,1,3,1])