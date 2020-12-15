import Control.Arrow ((>>>))

main :: IO ()
main = interact $
        lines >>> head >>> read >>> solve

solve :: Int -> String
solve w | w == 0 = "YES\n"
        | otherwise = "NO\n"
