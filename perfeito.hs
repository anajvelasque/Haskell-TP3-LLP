-- Dupla: Ana Julia Velasque e Pedro Vaz

perfeito:: Int -> Bool
perfeito n
    | n < 2 = False
    | auxPerfeito (divisores n) == n = True
    | otherwise = False

auxPerfeito :: [Int] -> Int
auxPerfeito [] = 0
auxPerfeito (x:y) = x + auxPerfeito y

divisores :: Int -> [Int]
divisores x = [y | y <- [1..((x `div` 2) + 1)], x `mod` y == 0]

main = do
print("Resultado: ", perfeito 28)
