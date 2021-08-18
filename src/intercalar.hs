-- Dupla: Ana Julia Velasque e Pedro Vaz

intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar (a:x) [] = [a] ++ intercalar x []
intercalar [] (b:y) = [b] ++ intercalar [] y
intercalar (a:x) (b:y) 
 | a < b = [a] ++ intercalar x ([b] ++ y)
 | otherwise = [b] ++ intercalar ([a] ++ x) y

main = do
print("Resultado: ", intercalar [1,5,10] [2,7,9,20,25])