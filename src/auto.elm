import Browser
import Html exposing (..)

type Msg =
 ItIsTime

type alias Model = {
 message : String        
 }

init : () -> (Model , Cmd Msg)  
init _ = ( Model "hello"  , Cmd.none )   

update : Msg -> Model -> (Model, Cmd Msg)
update msg model = 
 case msg of ItIsTime -> ({model | message = "It is time"}, Cmd.none )

subscriptions model = 
 Sub.none

view : Model -> Html Msg
view model = div [] [
         h1[] [text model.message]
        ]

main = Browser.element { init = init , view = view, update = update , subscriptions = subscriptions} 
