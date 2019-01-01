module DrinkList where

import Prelude

import Effect (Effect)
import React (ReactClass, ReactElement, statelessComponent)
import ReactNative.Components.Text (text, text_)
import ReactNative.Components.View (view, view_)
import ReactNative.Styles (Styles, margin, backgroundColor, borderColor, borderWidth, flex, hairlineWidth, height, marginBottom, marginLeft, marginRight, marginTop, marginVertical, padding, paddingHorizontal, staticStyles, styles', width)
import ReactNative.Styles.Flex (FlexAlignment(..), alignItems, alignSelf, flexDirection, flexStart, justifyContent, row, spaceBetween)
import ReactNative.Components.ListView (ListViewDataSource, cloneWithRows, getRowCount, listView', listViewDataSource, rowRenderer)
import ReactNative.Components.ScrollView
import ReactNative.PropTypes.Color (rgb)
import ReactNative.Styles.Text

import State.Drink (Drink, showPercentage)

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

type DrinkListProps = {
  drinks :: Array Drink
}

drinkList :: ReactClass DrinkListProps
drinkList = statelessComponent render
  where
  render props =
    scrollView_ [ text textStyles "Hello from subcomponent"
                   , listView' { dataSource: listViewDataSource props.drinks
                               , renderRow: rowRenderer renderRow
                               }
                   ]

type DrinkRowProps = {
  drink :: Drink
}

rowStyle :: Styles
rowStyle = staticStyles [
  flex 1,
  flexDirection row,
  margin 5,
  backgroundColor $ rgb 192 192 192,
  justifyContent spaceBetween
]

rowText :: Styles
rowText = staticStyles [
  fontSize 20
]

drinkRow :: DrinkRowProps -> ReactElement
drinkRow props =
      view rowStyle [ text rowText props.drink.name
                    , text rowText $ showPercentage props.drink.percentage]

renderRow :: Drink -> ReactElement
renderRow drink = drinkRow { drink: drink } -- {onSelect: d \_ -> Select m}
