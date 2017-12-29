-- File auto generated by purescript-bridge! --
module Mapnik.Common where

import Data.Lens (Iso', Lens', Prism', lens, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.Symbol (SProxy(SProxy))
import Prim (Number, String)

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Argonaut.Encode.Generic.Rep (genericEncodeJson)
import Data.Argonaut.Decode.Generic.Rep (genericDecodeJson)

newtype Expression =
    Expression String

derive instance genericExpression :: Generic Expression _

instance encodeJsonExpression :: EncodeJson Expression where encodeJson = genericEncodeJson

instance decodeJsonExpression :: DecodeJson Expression where decodeJson = genericDecodeJson

derive instance newtypeExpression :: Newtype Expression _


--------------------------------------------------------------------------------
_Expression :: Iso' Expression String
_Expression = _Newtype
--------------------------------------------------------------------------------
newtype PathExpression =
    PathExpression String

derive instance genericPathExpression :: Generic PathExpression _

instance encodeJsonPathExpression :: EncodeJson PathExpression where encodeJson = genericEncodeJson

instance decodeJsonPathExpression :: DecodeJson PathExpression where decodeJson = genericDecodeJson

derive instance newtypePathExpression :: Newtype PathExpression _


--------------------------------------------------------------------------------
_PathExpression :: Iso' PathExpression String
_PathExpression = _Newtype
--------------------------------------------------------------------------------
newtype Transform =
    Transform String

derive instance genericTransform :: Generic Transform _

instance encodeJsonTransform :: EncodeJson Transform where encodeJson = genericEncodeJson

instance decodeJsonTransform :: DecodeJson Transform where decodeJson = genericDecodeJson

derive instance newtypeTransform :: Newtype Transform _


--------------------------------------------------------------------------------
_Transform :: Iso' Transform String
_Transform = _Newtype
--------------------------------------------------------------------------------
newtype Box =
    Box {
      minx :: Number
    , miny :: Number
    , maxx :: Number
    , maxy :: Number
    }

derive instance genericBox :: Generic Box _

instance encodeJsonBox :: EncodeJson Box where encodeJson = genericEncodeJson

instance decodeJsonBox :: DecodeJson Box where decodeJson = genericDecodeJson

derive instance newtypeBox :: Newtype Box _


--------------------------------------------------------------------------------
_Box :: Iso' Box { minx :: Number, miny :: Number, maxx :: Number, maxy :: Number}
_Box = _Newtype

--------------------------------------------------------------------------------
data Dash =
    Dash Number Number

derive instance genericDash :: Generic Dash _

instance encodeJsonDash :: EncodeJson Dash where encodeJson = genericEncodeJson

instance decodeJsonDash :: DecodeJson Dash where decodeJson = genericDecodeJson


--------------------------------------------------------------------------------
_Dash :: Prism' Dash { a :: Number, b :: Number }
_Dash = prism' (\{ a, b } -> Dash a b) f
  where
    f (Dash a b) = Just $ { a: a, b: b }

--------------------------------------------------------------------------------
newtype FontFeatureSettings =
    FontFeatureSettings String

derive instance genericFontFeatureSettings :: Generic FontFeatureSettings _

instance encodeJsonFontFeatureSettings :: EncodeJson FontFeatureSettings where encodeJson = genericEncodeJson

instance decodeJsonFontFeatureSettings :: DecodeJson FontFeatureSettings where decodeJson = genericDecodeJson

derive instance newtypeFontFeatureSettings :: Newtype FontFeatureSettings _


--------------------------------------------------------------------------------
_FontFeatureSettings :: Iso' FontFeatureSettings String
_FontFeatureSettings = _Newtype
--------------------------------------------------------------------------------
