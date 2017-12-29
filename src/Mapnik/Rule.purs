-- File auto generated by purescript-bridge! --
module Mapnik.Rule where

import Data.Lens (Iso', Lens', Prism', lens, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe, Maybe(..))
import Data.Newtype (class Newtype)
import Data.Symbol (SProxy(SProxy))
import Mapnik.Common (Expression)
import Mapnik.Symbolizer (Symbolizer)
import Prim (Array, Boolean, Number, String)

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Argonaut.Encode.Generic.Rep (genericEncodeJson)
import Data.Argonaut.Decode.Generic.Rep (genericDecodeJson)

newtype Rule =
    Rule {
      name :: Maybe String
    , symbolizers :: Array Symbolizer
    , filter :: Maybe Expression
    , hasElse :: Maybe Boolean
    , hasAlso :: Maybe Boolean
    , minimumScaleDenominator :: Maybe Number
    , maximumScaleDenominator :: Maybe Number
    }

derive instance genericRule :: Generic Rule _

instance encodeJsonRule :: EncodeJson Rule where encodeJson = genericEncodeJson

instance decodeJsonRule :: DecodeJson Rule where decodeJson = genericDecodeJson

derive instance newtypeRule :: Newtype Rule _


--------------------------------------------------------------------------------
_Rule :: Iso' Rule { name :: Maybe String, symbolizers :: Array Symbolizer, filter :: Maybe Expression, hasElse :: Maybe Boolean, hasAlso :: Maybe Boolean, minimumScaleDenominator :: Maybe Number, maximumScaleDenominator :: Maybe Number}
_Rule = _Newtype

--------------------------------------------------------------------------------