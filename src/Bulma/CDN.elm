module Bulma.CDN exposing (stylesheet, localsheet)

{-|

@docs stylesheet, localsheet

-}

-- DOCS ------------------------------------------------------------------------
-- IMPORTS ---------------------------------------------------------------------

import Html exposing (Html, node)
import Html.Attributes exposing (href, rel)



-- STYLESHEET ------------------------------------------------------------------


{-| Include Bulma 0.7.1 in your Elm project.

    import Bulma.CDN exposing (stylesheet)

    view : Model -> Html msg
    view model =
        div []
            [ stylesheet
            , text "wow!"
            ]

-}
stylesheet : Html msg
stylesheet =
    node "link"
        [ rel "stylesheet"
        , href "https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css"
        ]
        []


{-| Include Bulma 0.7.1 in your Elm project.

    import Bulma.CDN exposing (localsheet)

    view : Model -> Html msg
    view model =
        div []
            [ stylesheet "mycustom.css"
            , text "wow!"
            ]

-}
localsheet : String -> Html msg
localsheet path =
    node "link"
        [ rel "stylesheet"
        , href path
        ]
        []
