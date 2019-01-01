module Main (app) where

import Prelude

import Effect (Effect)
import React (ReactClass, statelessComponent)
import ReactNative.Components.Text (text_)

app :: forall p. ReactClass {|p}
app = statelessComponent render
  where
  render _ = text_ "Hello Poo"
