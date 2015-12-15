module Server where

import Date as D
import Signal as S exposing (Signal)
import Time exposing (every, second)

import Message

port sendMessage : Signal Message.Message
port sendMessage =
  every second
    |> S.map D.fromTime
    |> S.map (\d -> { hours = D.hour d
                    , minutes = D.minute d
                    , seconds = D.second d
                    }
             )
