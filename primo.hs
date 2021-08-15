-- Dupla: Ana Julia Velasque e Pedro Vaz

primo :: Int -> Bool
primo n 
    |n < 2 = False
    |otherwise = primoAux n 2

primoAux:: Int->Int->Bool
primoAux n x
    |x * x > n = True
    |n `mod` x == 0 = False
    |otherwise = primoAux n (x + 1)

main = do
print("Resultado: ", primo 17)
print("Resultado: ", primo 0)