-- Calculate the displacement S, initial velocity u, acceleration a, time t, S=ut +1/2 at2

displacement :: Float -> Float -> Float -> Float -> Float
displacement u a t s = u*t + 0.5*a*t*t

main :: IO ()
main = do
    putStrLn "Enter the initial velocity: "
    u <- readLn
    putStrLn "Enter the acceleration: "
    a <- readLn
    putStrLn "Enter the time: "
    t <- readLn
    print ("[DISPLACEMENT] " ++ show (displacement u a t 0))