module Tachistoscope exposing (main)

import Browser
import Doc exposing (Doc, createDoc, getText)
import Html exposing (..)
import Html.Attributes exposing (..)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type Model
    = Editing Doc
    | Reading Doc



-- INIT


doc =
    Doc.createDoc "This is some text."


init : Model
init =
    Editing doc



-- UPDATE


type Msg
    = StartReading Doc


update : Msg -> Model -> Model
update msg model =
    case msg of
        StartReading document ->
            model



-- VIEW


view : Model -> Html Msg
view model =
    case model of
        Editing document ->
            div []
                [ div [ contenteditable True ] [ text (Doc.getText document) ]
                , button [] [ text "Run Tachistoscope" ]
                ]

        Reading document ->
            div [] [ text "Reading" ]
