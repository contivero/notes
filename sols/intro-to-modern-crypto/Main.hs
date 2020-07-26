import qualified Data.Map.Strict as M
import Data.Map.Strict (Map)

freqTable :: [(Char, Double)]
freqTable =
  [('a',8.2)
  ,('b',1.5)
  ,('c',2.8)
  ,('d',4.3)
  ,('e',12.7)
  ,('f',2.2)
  ,('g',2.0)
  ,('h',6.1)
  ,('i',7.0)
  ,('j',0.2)
  ,('k',0.8)
  ,('l',4.0)
  ,('m',2.4)
  ,('n',6.7)
  ,('o',7.5)
  ,('p',1.9)
  ,('q',0.1)
  ,('r',6.0)
  ,('s',6.3)
  ,('t',9.1)
  ,('u',2.8)
  ,('v',1.0)
  ,('w',2.4)
  ,('x',0.2)
  ,('y',2.0)
  ,('z',0.1)]


freq :: [Char] -> Map Char Int
freq = foldr op M.empty

digramfreq :: [Char] -> Map [Char] Int
digramfreq xs@(_:ys) = foldr op M.empty (zipWith (\x y -> [x,y]) xs ys)

op :: Ord k => k -> (Map k Int) -> Map k Int
op k = M.insertWith (+) k 1

ciphertext :: String
ciphertext =
  "JGRMQOYGHMVBJWRWQFPWHGFFDQGFPFZRKBEEBJIZQQOCIBZKLFAFGQVFZFWWE\
  \OGWOPFGFHWOLPHLRLOLFDMFGQWBLWBWQOLKFWBYLBLYLFSFLJGRMQBOLWJVFP\
  \FWQVHQWFFPQOQVFPQOCFPOGFWFJIGFQVHLHLROQVFGWJVFPFOLFHGQVQVFILE\
  \OGQILHQFQGIQVVOSFAFGBWQVHQWIJVWJVFPFWHGFIWIHZZRQGBABHZQOCGFHX"

dec :: [Char] -> [Char]
dec = map dec'
  where dec' c =
          case c of
            'F' -> 'e'
            'Q' -> 't'
            'V' -> 'h'
            'G' -> 'r'
            'O' -> 'o'
            'H' -> 'a'
            'A' -> 'v'
            'S' -> 'w'
            'W' -> 's'
            'Z' -> 'l'
            'L' -> 'n'
            'R' -> 'y'
            'P' -> 'm'
            'D' -> 'x'
            'E' -> 'f'
            'M' -> 'p'
            'J' -> 'c'
            'Y' -> 'g'
            'B' -> 'i'
            'K' -> 'd'
            'I' -> 'u'
            'C' -> 'b'
            'X' -> 'k'
            x -> x
