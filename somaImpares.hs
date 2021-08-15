-- Dupla: Ana Julia Velasque e Pedro Vaz

somaImpares :: [Int] -> Int
somaImpares x = somaImparesAuxiliar x 0

somaImparesAuxiliar :: [Int] -> Int -> Int
somaImparesAuxiliar [] sum = sum
somaImparesAuxiliar (x : xs) sum
    | x `mod` 2 == 0 = somaImparesAuxiliar xs sum
    | otherwise = somaImparesAuxiliar xs (sum + x)

main = do
print("Resultado: ", somaImpares [1,3,2,7,4,6,5])