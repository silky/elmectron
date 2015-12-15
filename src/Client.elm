module Client where

import List
import Maybe exposing (Maybe)
import Signal as S exposing (Signal)
import String
import Text as T
import Graphics.Element exposing (Element, leftAligned)

import Message exposing (Message)

port receive : Signal (Maybe Message)

main : Signal Element
main = S.map show
       <| S.map (Maybe.withDefault Message.empty)
          receive

show : Message -> Element
show m = leftAligned
         <| T.height 20 <| T.monospace <| T.fromString
         <| String.join ":"
         <| List.map (String.padLeft 2 '0' << toString)
              [ m.hours
              , m.minutes
              , m.seconds
              ]
