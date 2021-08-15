-- Dupla: Ana Julia Velasque e Pedro Vaz

palindromo:: [Int] -> Bool
palindromo [] = True
palindromo [n] = True
palindromo n = n == reverso n

reverso:: [Int] -> [Int]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]

main = do
print("Resultado: ", palindromo [1,2,3,4,3,2,1])