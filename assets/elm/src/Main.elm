module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (attribute, class, href, id, type_)


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
    div []
        [ nav [ class "navbar navbar-expand-md navbar-dark fixed-top bg-dark" ]
            [ a [ class "navbar-brand", href "#" ]
                [ text "Navbar" ]
            , button [ type_ "button", class "navbar-toggler", attribute "data-toggle" "collapse", attribute "data-target" "#navbar" ]
                [ span [ class "navbar-toggler-icon" ] [] ]
            , div [ id "navbar", class "navbar-collapse collapse" ]
                [ ul [ class "navbar-nav" ]
                    [ li [ class "nav-item active" ]
                        [ a [ class "nav-link", href "#" ] [ text "Home" ] ]
                    , li [ class "nav-item" ]
                        [ a [ class "nav-link", href "#" ] [ text "Link" ] ]
                    ]
                ]
            ]
        , main_ [ class "main" ]
            [ div [ class "jumbotron" ]
                [ div [ class "container text-center" ]
                    [ h1 []
                        [ i [ class "fas fa-code mr-3" ] []
                        , text model
                        , i [ class "fas fa-code ml-3" ] []
                        ]
                    ]
                ]
            ]
        ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
