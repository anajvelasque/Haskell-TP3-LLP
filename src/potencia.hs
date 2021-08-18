-- Dupla: Ana Julia Velasque e Pedro Vaz

potencia :: Int -> Int -> Int
potencia x n
 | n == 0 = 1
 | otherwise = x * potencia x (n - 1)

main = do
print("Resultado: ", potencia 3 2)