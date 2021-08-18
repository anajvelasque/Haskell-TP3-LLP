-- Dupla: Ana Julia Velasque e Pedro Vaz

trocar:: Int -> [Int]
trocar 0 = []
trocar cedulas
    | cedulas >= 100 = trocar (cedulas - 100) ++ [100]
    | cedulas >= 50  = trocar (cedulas - 50)  ++ [50]
    | cedulas >= 10  = trocar (cedulas - 10)  ++ [10]
    | cedulas >= 5   = trocar (cedulas - 5)   ++ [5]
    | cedulas >= 1   = trocar (cedulas - 1)   ++ [1]

main = do
print("Resultado: ", trocar 162)