-- Dupla: Ana Julia Velasque e Pedro Vaz

somaParciais :: [Int] -> [Int]
somaParciais x = auxSomaParciais x [] 0

auxSomaParciais :: [Int] -> [Int] -> Int -> [Int]
auxSomaParciais [] y _ = y
auxSomaParciais (x:xs) y soma = auxSomaParciais xs (y ++ [(soma + x)]) (soma + x)

main = do
print("Resultado: ", somaParciais [1,2,3,4])