-- Dupla: Ana Julia Velasque e Pedro Vaz

distintos:: [Int] -> Bool
distintos [] = True
distintos (x:xs)
    | length [n | n <- xs, n == x] > 0 = False
    | otherwise = distintos xs

main = do
print("Resultado: ", distintos [1,2,4,2,5])
print("Resultado: ",  distintos [3,2,1])