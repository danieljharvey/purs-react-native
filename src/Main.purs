module Main (app, main) where

import Prelude
import ReactNative.Styles.Text

import DrinkList (drinkList)
import Effect (Effect)
import React (ReactClass, createLeafElement, statelessComponent)
import ReactNative.Components.Text (text)
import ReactNative.Components.View (view)
import ReactNative.PropTypes.Color (rgb)
import ReactNative.Styles (Styles, margin, backgroundColor, borderColor, borderWidth, flex, hairlineWidth, height, marginBottom, marginLeft, marginRight, marginTop, marginVertical, padding, paddingHorizontal, staticStyles, styles', width)
import ReactNative.Styles.Flex (FlexAlignment(..), alignItems, alignSelf, flexDirection, flexStart, justifyContent, row, spaceBetween)

import State.Drink (sampleDrinks)

appStyles :: Styles
appStyles = staticStyles [
    justifyContent spaceBetween,
    flex 1,
    backgroundColor $ rgb 230 155 100,
    alignItems $ FlexAlignment "center",
    margin 10
  ]

textStyles :: Styles
textStyles = staticStyles [
  color $ rgb 192 102 45,
  fontSize 30,
  margin 30
]

app :: forall p. ReactClass {|p}
app = statelessComponent render
  where
  render _ =
    view appStyles [ text textStyles "Hello from Purescript and React Native"
                   , createLeafElement drinkList { drinks: sampleDrinks }
                   ]

main :: Effect Unit
main = pure unit
