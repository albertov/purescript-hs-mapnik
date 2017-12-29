-- File auto generated by purescript-bridge! --
module Mapnik.Datasource where

import Data.Lens (Iso', Lens', Prism', lens, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap)
import Data.Symbol (SProxy(SProxy))
import Mapnik.Parameter (Value)

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Argonaut.Encode.Generic.Rep (genericEncodeJson)
import Data.Argonaut.Decode.Generic.Rep (genericDecodeJson)

newtype Datasource =
    Datasource (StrMap Value)

derive instance genericDatasource :: Generic Datasource _

instance encodeJsonDatasource :: EncodeJson Datasource where encodeJson = genericEncodeJson

instance decodeJsonDatasource :: DecodeJson Datasource where decodeJson = genericDecodeJson

derive instance newtypeDatasource :: Newtype Datasource _


--------------------------------------------------------------------------------
_Datasource :: Iso' Datasource (StrMap Value)
_Datasource = _Newtype
--------------------------------------------------------------------------------