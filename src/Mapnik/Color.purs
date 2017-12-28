-- File auto generated by purescript-bridge! --
module Mapnik.Color where

import Data.Lens (Iso', Lens', Prism', lens, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.Symbol (SProxy(SProxy))
import Prim (Int)

import Prelude
import Data.Generic.Rep (class Generic)

data Color =
    RGBA Int Int Int Int

derive instance genericColor :: Generic Color _


--------------------------------------------------------------------------------
_RGBA :: Prism' Color { a :: Int, b :: Int, c :: Int, d :: Int }
_RGBA = prism' (\{ a, b, c, d } -> RGBA a b c d) f
  where
    f (RGBA a b c d) = Just $ { a: a, b: b, c: c, d: d }

--------------------------------------------------------------------------------
