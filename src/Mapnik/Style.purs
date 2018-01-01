-- File auto generated by purescript-bridge! --
module Mapnik.Style where

import Data.Lens (Iso', Lens', Prism', lens, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe, Maybe(..))
import Data.Newtype (class Newtype)
import Data.Symbol (SProxy(SProxy))
import Mapnik.Enums (CompositeMode, FilterMode)
import Mapnik.ImageFilter (ImageFilter)
import Mapnik.Rule (Rule)
import Prim (Array, Boolean, Number)

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Foreign.Class (class Decode, class Encode, decode, encode)
import Data.Foreign.Generic (defaultOptions, genericEncode, genericDecode)
import Data.Foreign.Generic.Types (Options, SumEncoding(..))
import Data.Foreign.Generic.Class (class GenericDecode, class GenericEncode)
import Data.Generic.Rep.Eq as GEq
import Data.Generic.Rep.Show as GShow

jOpts = defaultOptions { sumEncoding = ObjectWithSingleField, unwrapSingleConstructors = true}
newtype Style =
    Style {
      opacity :: Maybe Number
    , filterMode :: Maybe FilterMode
    , filters :: Array ImageFilter
    , directFilters :: Array ImageFilter
    , imageFiltersInflate :: Maybe Boolean
    , rules :: Array Rule
    , compOp :: Maybe CompositeMode
    }

derive instance genericStyle :: Generic Style _

instance encodeStyle :: Encode Style where encode = genericEncode jOpts

instance decodeStyle :: Decode Style where decode = genericDecode jOpts

instance showStyle :: Show Style where show = GShow.genericShow

instance eqStyle :: Eq Style where eq = GEq.genericEq

derive instance newtypeStyle :: Newtype Style _


--------------------------------------------------------------------------------
_Style :: Iso' Style { opacity :: Maybe Number, filterMode :: Maybe FilterMode, filters :: Array ImageFilter, directFilters :: Array ImageFilter, imageFiltersInflate :: Maybe Boolean, rules :: Array Rule, compOp :: Maybe CompositeMode}
_Style = _Newtype

--------------------------------------------------------------------------------
