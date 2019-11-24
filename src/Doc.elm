module Doc exposing (Doc, createDoc, getText)


type BodyText
    = BodyText String


type Doc
    = Doc BodyText


createDoc : String -> Doc
createDoc text =
    Doc (BodyText text)


getText : Doc -> String
getText document =
    case document of
        Doc (BodyText text) ->
            text
