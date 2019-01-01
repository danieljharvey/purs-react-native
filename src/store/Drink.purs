module State.Drink where

import Prelude ((/), (<>), show)
import Data.Int (toNumber)

type Drink =
  { amount :: Int
  , percentage :: Int
  , brand :: String
  , name :: String
}

showPercentage :: Int -> String
showPercentage i = show divided <> "%" where
  divided = (toNumber i) / 10.0

sampleDrink :: Drink
sampleDrink =
  { amount: 568
  , percentage: 46
  , brand: "Villagers"
  , name: "Rodeo"
}

sampleDrinks :: Array Drink
sampleDrinks = [sampleDrink, sampleDrink, sampleDrink, sampleDrink]
