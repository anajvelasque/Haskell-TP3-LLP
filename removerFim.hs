-- Dupla: Ana Julia Velasque e Pedro Vaz

removerFim:: Int -> [Int] -> [Int]
removerFim n x = nova_lista (length x - n) x

nova_lista:: Int -> [Int] -> [Int]
nova_lista 0 _ = []
nova_lista n (x:xs) = [x] ++ nova_lista (n-1) xs

main = do
print("Resultado: ", removerFim 2 [1,2,3,4,5,6])