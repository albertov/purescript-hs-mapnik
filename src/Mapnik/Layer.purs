-- File auto generated by purescript-bridge! --
module Mapnik.Layer where

import Data.Lens (Iso', Lens', Prism', lens, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe, Maybe(..))
import Data.Newtype (class Newtype)
import Data.Symbol (SProxy(SProxy))
import Mapnik.Common (Box)
import Prim (Array, Boolean, Int, Number, String)

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Argonaut.Encode.Generic.Rep (genericEncodeJson)
import Data.Argonaut.Decode.Generic.Rep (genericDecodeJson)

newtype Layer a =
    Layer {
      name :: String
    , dataSource :: Maybe a
    , styles :: Array String
    , srs :: Maybe String
    , minimumScaleDenominator :: Maybe Number
    , maximumScaleDenominator :: Maybe Number
    , queryable :: Maybe Boolean
    , clearLabelCache :: Maybe Boolean
    , cacheFeatures :: Maybe Boolean
    , groupBy :: Maybe String
    , bufferSize :: Maybe Int
    , maximumExtent :: Maybe Box
    }

derive instance genericLayer :: Generic (Layer a) _

instance encodeJsonLayer :: EncodeJson a => EncodeJson (Layer a) where encodeJson = genericEncodeJson

instance decodeJsonLayer :: DecodeJson a => DecodeJson (Layer a) where decodeJson = genericDecodeJson

derive instance newtypeLayer :: Newtype (Layer a) _


--------------------------------------------------------------------------------
_Layer :: forall a. Iso' (Layer a) { name :: String, dataSource :: Maybe a, styles :: Array String, srs :: Maybe String, minimumScaleDenominator :: Maybe Number, maximumScaleDenominator :: Maybe Number, queryable :: Maybe Boolean, clearLabelCache :: Maybe Boolean, cacheFeatures :: Maybe Boolean, groupBy :: Maybe String, bufferSize :: Maybe Int, maximumExtent :: Maybe Box}
_Layer = _Newtype

--------------------------------------------------------------------------------
