module Message where

type alias Message = { hours: Int
                     , minutes: Int
                     , seconds: Int
                     }

empty : Message
empty = { hours = 0
        , minutes = 0
        , seconds = 0
        }
