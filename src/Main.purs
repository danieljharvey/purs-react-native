module Main (app, main) where

import Prelude

import Effect (Effect)
import React (ReactClass, statelessComponent)
import ReactNative.Components.Text (text)
import ReactNative.Components.View (view)
import ReactNative.Styles (Styles, margin, backgroundColor, borderColor, borderWidth, flex, hairlineWidth, height, marginBottom, marginLeft, marginRight, marginTop, marginVertical, padding, paddingHorizontal, staticStyles, styles', width)
import ReactNative.Styles.Flex (FlexAlignment(..), alignItems, alignSelf, flexDirection, flexStart, justifyContent, row, spaceBetween)
import ReactNative.PropTypes.Color (rgb)
import ReactNative.Styles.Text

appStyles :: Styles
appStyles = staticStyles [
    justifyContent spaceBetween,
    flex 1,
    backgroundColor $ rgb 192 102 45,
    alignItems $ FlexAlignment "center",
    margin 40
  ]

textStyles :: Styles
textStyles = staticStyles [
  color $ rgb 230 155 100,
  fontSize 30,
  margin 30
]

app :: forall p. ReactClass {|p}
app = statelessComponent render
  where
  render _ = view appStyles [text textStyles "Hello from Purescript and React Native"]

main :: Effect Unit
main = pure unit
