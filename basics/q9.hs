-- Calculate the volume and surface area of a sphere

sphereVolume :: Float -> Float
sphereVolume r = (4 / 3) * pi * r ** 3

sphereSurfaceArea :: Float -> Float
sphereSurfaceArea r = 4 * pi * r ** 2

main :: IO ()
main = do
    putStrLn "Enter radius of sphere: "
    radius <- getLine
    let r = read radius

    if r < 0 then putStrLn "Invalid radius" else do
        putStrLn ("[RESULT] Volume: " ++ show (sphereVolume r))
        putStrLn ("[RESULT] Surface Area: " ++ show (sphereSurfaceArea r))