-- Dupla: Ana Julia Velasque e Pedro Vaz

linearizar:: [[Int]] -> [Int]
linearizar [] = []
linearizar (x:xs) = x ++ linearizar xs

main = do
print("Resultado: ", linearizar [ [1,2], [5], [0,4,2] ])