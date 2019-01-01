module State.RootState where

import State.Drink (Drink)

type RootState = {
  drinks :: Array Drink
}

initialState :: RootState
initialState = {
  drinks: []
}
