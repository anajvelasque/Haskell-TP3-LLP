-- Dupla: Ana Julia Velasque e Pedro Vaz

shift :: Int -> [Int] -> [Int]
shift n [] = []
shift 0 x = x
shift n x = (removeElemento n x) ++ primeirosElementos n x

primeirosElementos :: Int -> [Int] -> [Int]
primeirosElementos 0 _ = []
primeirosElementos n (x:xs) = [x] ++ primeirosElementos (n - 1) xs

removeElemento :: Int -> [Int] -> [Int]
removeElemento 0 x = x
removeElemento n (x:xs) = removeElemento (n - 1) xs

main = do
print("Resultado: ", shift 3 [1,5,6,7,3,4,1])