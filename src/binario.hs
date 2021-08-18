-- Dupla: Ana Julia Velasque e Pedro Vaz

binario :: Int -> [Int]
binario n
    |n == 0 = [0]
    |n == 1 = [1]
    |otherwise = binarioAux n []

binarioAux :: Int -> [Int] -> [Int]
binarioAux 0 l = reverter l
binarioAux n l
    | n `mod` 2 == 0 = binarioAux (n `div` 2) (l ++ [0])
    | otherwise = binarioAux (n `div` 2) (l ++ [1])

reverter:: [Int] -> [Int]
reverter [] = []
reverter (n:l) = reverter l ++ [n]

main = do
print("Resultado: ", binario 20)