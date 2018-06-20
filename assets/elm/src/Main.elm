module Main exposing (main)

import Html exposing (..)


-- MAIN


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- INIT


init : ( Model, Cmd Msg )
init =
    ( "Hello, Elm on Phoenix Starter App!", Cmd.none )



-- MODEL


type alias Model =
    String



-- MESSAGES


type Msg
    = NoOp



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div [] [ text model ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
