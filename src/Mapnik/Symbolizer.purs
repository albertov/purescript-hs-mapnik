-- File auto generated by purescript-bridge! --
module Mapnik.Symbolizer where

import Data.Lens (Iso', Lens', Prism', lens, prism')
import Data.Lens.Iso.Newtype (_Newtype)
import Data.Lens.Record (prop)
import Data.Maybe (Maybe, Maybe(..))
import Data.Newtype (class Newtype)
import Data.Symbol (SProxy(SProxy))
import Mapnik.Color (Color)
import Mapnik.Common (Dash, Expression, FontFeatureSettings, PathExpression, Transform)
import Mapnik.Enums (ColorizerMode, CompositeMode, DebugMode, Direction, GammaMethod, HaloRasterizer, HorizontalAlignment, JustifyAlignment, LabelPlacement, LineCap, LineJoin, LineRasterizer, MarkerMultiPolicy, MarkerPlacement, PatternAlignment, PlacementDirection, PointPlacement, ScalingMethod, SimplifyAlgorithm, TextTransform, Upright, VerticalAlignment)
import Prim (Array, Boolean, Int, Number, String)

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Argonaut.Encode.Class (class EncodeJson, encodeJson)
import Data.Argonaut.Decode.Class (class DecodeJson, decodeJson)
import Data.Argonaut.Encode.Generic.Rep (genericEncodeJson)
import Data.Argonaut.Decode.Generic.Rep (genericDecodeJson)

data Symbolizer =
    PointSymbolizer {
      file :: Maybe PathExpression
    , opacity :: Maybe (Prop Number)
    , allowOverlap :: Maybe (Prop Boolean)
    , ignorePlacement :: Maybe (Prop Boolean)
    , pointPlacement :: Maybe (Prop PointPlacement)
    , imageTransform :: Maybe (Prop Transform)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | LineSymbolizer {
      offset :: Maybe (Prop Number)
    , lineRasterizer :: Maybe (Prop LineRasterizer)
    , strokeGamma :: Maybe (Prop Number)
    , strokeGammaMethod :: Maybe (Prop GammaMethod)
    , strokeDashArray :: Maybe (Prop (Array Dash))
    , strokeDashOffset :: Maybe (Prop Number)
    , strokeMiterLimit :: Maybe (Prop Number)
    , strokeWidth :: Maybe (Prop Number)
    , strokeOpacity :: Maybe (Prop Number)
    , stroke :: Maybe (Prop Color)
    , strokeLineJoin :: Maybe (Prop LineJoin)
    , strokeLineCap :: Maybe (Prop LineCap)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | LinePatternSymbolizer {
      file :: Maybe PathExpression
    , opacity :: Maybe (Prop Number)
    , offset :: Maybe (Prop Number)
    , imageTransform :: Maybe (Prop Transform)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | PolygonSymbolizer {
      fill :: Maybe (Prop Color)
    , fillOpacity :: Maybe (Prop Number)
    , gamma :: Maybe (Prop Number)
    , gammaMethod :: Maybe (Prop GammaMethod)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | PolygonPatternSymbolizer {
      file :: Maybe PathExpression
    , opacity :: Maybe (Prop Number)
    , gamma :: Maybe (Prop Number)
    , gammaMethod :: Maybe (Prop GammaMethod)
    , imageTransform :: Maybe (Prop Transform)
    , alignment :: Maybe (Prop PatternAlignment)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | RasterSymbolizer {
      scaling :: Maybe ScalingMethod
    , rasterOpacity :: Maybe Number
    , filterFactor :: Maybe Number
    , meshSize :: Maybe Int
    , preMultiplied :: Maybe Boolean
    , colorizer :: Maybe Colorizer
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | ShieldSymbolizer {
      placements :: TextPlacements
    , imageTransform :: Maybe (Prop Transform)
    , dx :: Maybe (Prop Number)
    , dy :: Maybe (Prop Number)
    , opacity :: Maybe (Prop Number)
    , unlockImage :: Maybe (Prop Boolean)
    , file :: Maybe PathExpression
    , haloRasterizer :: Maybe (Prop HaloRasterizer)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | TextSymbolizer {
      placements :: TextPlacements
    , haloCompOp :: Maybe (Prop CompositeMode)
    , haloRasterizer :: Maybe (Prop HaloRasterizer)
    , haloTransform :: Maybe (Prop Transform)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | BuildingSymbolizer {
      fill :: Maybe (Prop Color)
    , fillOpacity :: Maybe (Prop Number)
    , height :: Maybe (Prop Number)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | MarkersSymbolizer {
      file :: Maybe PathExpression
    , opacity :: Maybe (Prop Number)
    , fill :: Maybe (Prop Color)
    , fillOpacity :: Maybe (Prop Number)
    , spacing :: Maybe (Prop Number)
    , maxError :: Maybe (Prop Number)
    , offset :: Maybe (Prop Number)
    , width :: Maybe (Prop Number)
    , height :: Maybe (Prop Number)
    , allowOverlap :: Maybe (Prop Boolean)
    , avoidEdges :: Maybe (Prop Boolean)
    , ignorePlacement :: Maybe (Prop Boolean)
    , imageTransform :: Maybe (Prop Transform)
    , placement :: Maybe (Prop MarkerPlacement)
    , multiPolicy :: Maybe (Prop MarkerMultiPolicy)
    , direction :: Maybe (Prop Direction)
    , strokeGamma :: Maybe (Prop Number)
    , strokeGammaMethod :: Maybe (Prop GammaMethod)
    , strokeDashArray :: Maybe (Prop (Array Dash))
    , strokeDashOffset :: Maybe (Prop Number)
    , strokeMiterLimit :: Maybe (Prop Number)
    , strokeWidth :: Maybe (Prop Number)
    , strokeOpacity :: Maybe (Prop Number)
    , stroke :: Maybe (Prop Color)
    , strokeLineJoin :: Maybe (Prop LineJoin)
    , strokeLineCap :: Maybe (Prop LineCap)
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | GroupSymbolizer {
      groupProperties :: GroupSymProperties
    , numColumns :: Maybe (Prop Int)
    , startColumn :: Maybe (Prop Int)
    , repeatKey :: Maybe (Prop Expression)
    , placements :: TextPlacements
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | DebugSymbolizer {
      mode :: Maybe DebugMode
    , simplifyTolerance :: Maybe (Prop Number)
    , smooth :: Maybe (Prop Number)
    , clip :: Maybe (Prop Boolean)
    , compOp :: Maybe (Prop CompositeMode)
    , geometryTransform :: Maybe (Prop Transform)
    , simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm)
    }
  | DotSymbolizer {
      fill :: Maybe (Prop Color)
    , opacity :: Maybe (Prop Number)
    , width :: Maybe (Prop Number)
    , height :: Maybe (Prop Number)
    , compOp :: Maybe (Prop CompositeMode)
    }

derive instance genericSymbolizer :: Generic Symbolizer _

instance encodeJsonSymbolizer :: EncodeJson Symbolizer where encodeJson = genericEncodeJson

instance decodeJsonSymbolizer :: DecodeJson Symbolizer where decodeJson = genericDecodeJson


--------------------------------------------------------------------------------
_PointSymbolizer :: Prism' Symbolizer { file :: Maybe PathExpression, opacity :: Maybe (Prop Number), allowOverlap :: Maybe (Prop Boolean), ignorePlacement :: Maybe (Prop Boolean), pointPlacement :: Maybe (Prop PointPlacement), imageTransform :: Maybe (Prop Transform), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_PointSymbolizer = prism' PointSymbolizer f
  where
    f (PointSymbolizer r) = Just r
    f _ = Nothing

_LineSymbolizer :: Prism' Symbolizer { offset :: Maybe (Prop Number), lineRasterizer :: Maybe (Prop LineRasterizer), strokeGamma :: Maybe (Prop Number), strokeGammaMethod :: Maybe (Prop GammaMethod), strokeDashArray :: Maybe (Prop (Array Dash)), strokeDashOffset :: Maybe (Prop Number), strokeMiterLimit :: Maybe (Prop Number), strokeWidth :: Maybe (Prop Number), strokeOpacity :: Maybe (Prop Number), stroke :: Maybe (Prop Color), strokeLineJoin :: Maybe (Prop LineJoin), strokeLineCap :: Maybe (Prop LineCap), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_LineSymbolizer = prism' LineSymbolizer f
  where
    f (LineSymbolizer r) = Just r
    f _ = Nothing

_LinePatternSymbolizer :: Prism' Symbolizer { file :: Maybe PathExpression, opacity :: Maybe (Prop Number), offset :: Maybe (Prop Number), imageTransform :: Maybe (Prop Transform), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_LinePatternSymbolizer = prism' LinePatternSymbolizer f
  where
    f (LinePatternSymbolizer r) = Just r
    f _ = Nothing

_PolygonSymbolizer :: Prism' Symbolizer { fill :: Maybe (Prop Color), fillOpacity :: Maybe (Prop Number), gamma :: Maybe (Prop Number), gammaMethod :: Maybe (Prop GammaMethod), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_PolygonSymbolizer = prism' PolygonSymbolizer f
  where
    f (PolygonSymbolizer r) = Just r
    f _ = Nothing

_PolygonPatternSymbolizer :: Prism' Symbolizer { file :: Maybe PathExpression, opacity :: Maybe (Prop Number), gamma :: Maybe (Prop Number), gammaMethod :: Maybe (Prop GammaMethod), imageTransform :: Maybe (Prop Transform), alignment :: Maybe (Prop PatternAlignment), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_PolygonPatternSymbolizer = prism' PolygonPatternSymbolizer f
  where
    f (PolygonPatternSymbolizer r) = Just r
    f _ = Nothing

_RasterSymbolizer :: Prism' Symbolizer { scaling :: Maybe ScalingMethod, rasterOpacity :: Maybe Number, filterFactor :: Maybe Number, meshSize :: Maybe Int, preMultiplied :: Maybe Boolean, colorizer :: Maybe Colorizer, simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_RasterSymbolizer = prism' RasterSymbolizer f
  where
    f (RasterSymbolizer r) = Just r
    f _ = Nothing

_ShieldSymbolizer :: Prism' Symbolizer { placements :: TextPlacements, imageTransform :: Maybe (Prop Transform), dx :: Maybe (Prop Number), dy :: Maybe (Prop Number), opacity :: Maybe (Prop Number), unlockImage :: Maybe (Prop Boolean), file :: Maybe PathExpression, haloRasterizer :: Maybe (Prop HaloRasterizer), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_ShieldSymbolizer = prism' ShieldSymbolizer f
  where
    f (ShieldSymbolizer r) = Just r
    f _ = Nothing

_TextSymbolizer :: Prism' Symbolizer { placements :: TextPlacements, haloCompOp :: Maybe (Prop CompositeMode), haloRasterizer :: Maybe (Prop HaloRasterizer), haloTransform :: Maybe (Prop Transform), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_TextSymbolizer = prism' TextSymbolizer f
  where
    f (TextSymbolizer r) = Just r
    f _ = Nothing

_BuildingSymbolizer :: Prism' Symbolizer { fill :: Maybe (Prop Color), fillOpacity :: Maybe (Prop Number), height :: Maybe (Prop Number), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_BuildingSymbolizer = prism' BuildingSymbolizer f
  where
    f (BuildingSymbolizer r) = Just r
    f _ = Nothing

_MarkersSymbolizer :: Prism' Symbolizer { file :: Maybe PathExpression, opacity :: Maybe (Prop Number), fill :: Maybe (Prop Color), fillOpacity :: Maybe (Prop Number), spacing :: Maybe (Prop Number), maxError :: Maybe (Prop Number), offset :: Maybe (Prop Number), width :: Maybe (Prop Number), height :: Maybe (Prop Number), allowOverlap :: Maybe (Prop Boolean), avoidEdges :: Maybe (Prop Boolean), ignorePlacement :: Maybe (Prop Boolean), imageTransform :: Maybe (Prop Transform), placement :: Maybe (Prop MarkerPlacement), multiPolicy :: Maybe (Prop MarkerMultiPolicy), direction :: Maybe (Prop Direction), strokeGamma :: Maybe (Prop Number), strokeGammaMethod :: Maybe (Prop GammaMethod), strokeDashArray :: Maybe (Prop (Array Dash)), strokeDashOffset :: Maybe (Prop Number), strokeMiterLimit :: Maybe (Prop Number), strokeWidth :: Maybe (Prop Number), strokeOpacity :: Maybe (Prop Number), stroke :: Maybe (Prop Color), strokeLineJoin :: Maybe (Prop LineJoin), strokeLineCap :: Maybe (Prop LineCap), simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_MarkersSymbolizer = prism' MarkersSymbolizer f
  where
    f (MarkersSymbolizer r) = Just r
    f _ = Nothing

_GroupSymbolizer :: Prism' Symbolizer { groupProperties :: GroupSymProperties, numColumns :: Maybe (Prop Int), startColumn :: Maybe (Prop Int), repeatKey :: Maybe (Prop Expression), placements :: TextPlacements, simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_GroupSymbolizer = prism' GroupSymbolizer f
  where
    f (GroupSymbolizer r) = Just r
    f _ = Nothing

_DebugSymbolizer :: Prism' Symbolizer { mode :: Maybe DebugMode, simplifyTolerance :: Maybe (Prop Number), smooth :: Maybe (Prop Number), clip :: Maybe (Prop Boolean), compOp :: Maybe (Prop CompositeMode), geometryTransform :: Maybe (Prop Transform), simplifyAlgorithm :: Maybe (Prop SimplifyAlgorithm) }
_DebugSymbolizer = prism' DebugSymbolizer f
  where
    f (DebugSymbolizer r) = Just r
    f _ = Nothing

_DotSymbolizer :: Prism' Symbolizer { fill :: Maybe (Prop Color), opacity :: Maybe (Prop Number), width :: Maybe (Prop Number), height :: Maybe (Prop Number), compOp :: Maybe (Prop CompositeMode) }
_DotSymbolizer = prism' DotSymbolizer f
  where
    f (DotSymbolizer r) = Just r
    f _ = Nothing

--------------------------------------------------------------------------------
data Prop a =
    Exp Expression
  | Val a

derive instance genericProp :: Generic (Prop a) _

instance encodeJsonProp :: EncodeJson a => EncodeJson (Prop a) where encodeJson = genericEncodeJson

instance decodeJsonProp :: DecodeJson a => DecodeJson (Prop a) where decodeJson = genericDecodeJson


--------------------------------------------------------------------------------
_Exp :: forall a. Prism' (Prop a) Expression
_Exp = prism' Exp f
  where
    f (Exp a) = Just $ a
    f _ = Nothing

_Val :: forall a. Prism' (Prop a) a
_Val = prism' Val f
  where
    f (Val a) = Just $ a
    f _ = Nothing

--------------------------------------------------------------------------------
newtype Stop =
    Stop {
      value :: Number
    , color :: Color
    , mode :: Maybe ColorizerMode
    , label :: Maybe String
    }

derive instance genericStop :: Generic Stop _

instance encodeJsonStop :: EncodeJson Stop where encodeJson = genericEncodeJson

instance decodeJsonStop :: DecodeJson Stop where decodeJson = genericDecodeJson

derive instance newtypeStop :: Newtype Stop _


--------------------------------------------------------------------------------
_Stop :: Iso' Stop { value :: Number, color :: Color, mode :: Maybe ColorizerMode, label :: Maybe String}
_Stop = _Newtype

--------------------------------------------------------------------------------
newtype Colorizer =
    Colorizer {
      mode :: Maybe ColorizerMode
    , color :: Maybe Color
    , epsilon :: Maybe Number
    , stops :: Array Stop
    }

derive instance genericColorizer :: Generic Colorizer _

instance encodeJsonColorizer :: EncodeJson Colorizer where encodeJson = genericEncodeJson

instance decodeJsonColorizer :: DecodeJson Colorizer where decodeJson = genericDecodeJson

derive instance newtypeColorizer :: Newtype Colorizer _


--------------------------------------------------------------------------------
_Colorizer :: Iso' Colorizer { mode :: Maybe ColorizerMode, color :: Maybe Color, epsilon :: Maybe Number, stops :: Array Stop}
_Colorizer = _Newtype

--------------------------------------------------------------------------------
newtype TextProperties =
    TextProperties {
      labelPlacement :: Maybe (Prop LabelPlacement)
    , labelSpacing :: Maybe (Prop Number)
    , labelPositionTolerance :: Maybe (Prop Number)
    , avoidEdges :: Maybe (Prop Boolean)
    , margin :: Maybe (Prop Number)
    , repeatDistance :: Maybe (Prop Number)
    , minimumDistance :: Maybe (Prop Number)
    , minimumPadding :: Maybe (Prop Number)
    , minimumPathLength :: Maybe (Prop Number)
    , maxCharAngleDelta :: Maybe (Prop Number)
    , allowOverlap :: Maybe (Prop Boolean)
    , largestBoxOnly :: Maybe (Prop Boolean)
    , upright :: Maybe (Prop Upright)
    }

derive instance genericTextProperties :: Generic TextProperties _

instance encodeJsonTextProperties :: EncodeJson TextProperties where encodeJson = genericEncodeJson

instance decodeJsonTextProperties :: DecodeJson TextProperties where decodeJson = genericDecodeJson

derive instance newtypeTextProperties :: Newtype TextProperties _


--------------------------------------------------------------------------------
_TextProperties :: Iso' TextProperties { labelPlacement :: Maybe (Prop LabelPlacement), labelSpacing :: Maybe (Prop Number), labelPositionTolerance :: Maybe (Prop Number), avoidEdges :: Maybe (Prop Boolean), margin :: Maybe (Prop Number), repeatDistance :: Maybe (Prop Number), minimumDistance :: Maybe (Prop Number), minimumPadding :: Maybe (Prop Number), minimumPathLength :: Maybe (Prop Number), maxCharAngleDelta :: Maybe (Prop Number), allowOverlap :: Maybe (Prop Boolean), largestBoxOnly :: Maybe (Prop Boolean), upright :: Maybe (Prop Upright)}
_TextProperties = _Newtype

--------------------------------------------------------------------------------
newtype TextSymProperties =
    TextSymProperties {
      properties :: TextProperties
    , layoutProperties :: TextLayoutProperties
    , formatProperties :: TextFormatProperties
    , format :: Format
    }

derive instance genericTextSymProperties :: Generic TextSymProperties _

instance encodeJsonTextSymProperties :: EncodeJson TextSymProperties where encodeJson = genericEncodeJson

instance decodeJsonTextSymProperties :: DecodeJson TextSymProperties where decodeJson = genericDecodeJson

derive instance newtypeTextSymProperties :: Newtype TextSymProperties _


--------------------------------------------------------------------------------
_TextSymProperties :: Iso' TextSymProperties { properties :: TextProperties, layoutProperties :: TextLayoutProperties, formatProperties :: TextFormatProperties, format :: Format}
_TextSymProperties = _Newtype

--------------------------------------------------------------------------------
newtype GroupSymProperties =
    GroupSymProperties {
      layout :: GroupLayout
    , rules :: Array GroupRule
    }

derive instance genericGroupSymProperties :: Generic GroupSymProperties _

instance encodeJsonGroupSymProperties :: EncodeJson GroupSymProperties where encodeJson = genericEncodeJson

instance decodeJsonGroupSymProperties :: DecodeJson GroupSymProperties where decodeJson = genericDecodeJson

derive instance newtypeGroupSymProperties :: Newtype GroupSymProperties _


--------------------------------------------------------------------------------
_GroupSymProperties :: Iso' GroupSymProperties { layout :: GroupLayout, rules :: Array GroupRule}
_GroupSymProperties = _Newtype

--------------------------------------------------------------------------------
newtype GroupRule =
    GroupRule {
      symbolizers :: Array Symbolizer
    , filter :: Maybe Expression
    , repeatKey :: Maybe Expression
    }

derive instance genericGroupRule :: Generic GroupRule _

instance encodeJsonGroupRule :: EncodeJson GroupRule where encodeJson = genericEncodeJson

instance decodeJsonGroupRule :: DecodeJson GroupRule where decodeJson = genericDecodeJson

derive instance newtypeGroupRule :: Newtype GroupRule _


--------------------------------------------------------------------------------
_GroupRule :: Iso' GroupRule { symbolizers :: Array Symbolizer, filter :: Maybe Expression, repeatKey :: Maybe Expression}
_GroupRule = _Newtype

--------------------------------------------------------------------------------
data GroupLayout =
    SimpleRowLayout {
      itemMargin :: Maybe Number
    }
  | PairLayout {
      itemMargin :: Maybe Number
    , maxDifference :: Maybe Number
    }

derive instance genericGroupLayout :: Generic GroupLayout _

instance encodeJsonGroupLayout :: EncodeJson GroupLayout where encodeJson = genericEncodeJson

instance decodeJsonGroupLayout :: DecodeJson GroupLayout where decodeJson = genericDecodeJson


--------------------------------------------------------------------------------
_SimpleRowLayout :: Prism' GroupLayout { itemMargin :: Maybe Number }
_SimpleRowLayout = prism' SimpleRowLayout f
  where
    f (SimpleRowLayout r) = Just r
    f _ = Nothing

_PairLayout :: Prism' GroupLayout { itemMargin :: Maybe Number, maxDifference :: Maybe Number }
_PairLayout = prism' PairLayout f
  where
    f (PairLayout r) = Just r
    f _ = Nothing

--------------------------------------------------------------------------------
newtype TextLayoutProperties =
    TextLayoutProperties {
      dx :: Maybe (Prop Number)
    , dy :: Maybe (Prop Number)
    , orientation :: Maybe (Prop Number)
    , textRatio :: Maybe (Prop Number)
    , wrapWidth :: Maybe (Prop Number)
    , wrapChar :: Maybe (Prop String)
    , wrapBefore :: Maybe (Prop Boolean)
    , repeatWrapChar :: Maybe (Prop Boolean)
    , rotateDisplacement :: Maybe (Prop Boolean)
    , horizontalAlignment :: Maybe (Prop HorizontalAlignment)
    , justifyAlignment :: Maybe (Prop JustifyAlignment)
    , verticalAlignment :: Maybe (Prop VerticalAlignment)
    , direction :: Maybe PlacementDirection
    }

derive instance genericTextLayoutProperties :: Generic TextLayoutProperties _

instance encodeJsonTextLayoutProperties :: EncodeJson TextLayoutProperties where encodeJson = genericEncodeJson

instance decodeJsonTextLayoutProperties :: DecodeJson TextLayoutProperties where decodeJson = genericDecodeJson

derive instance newtypeTextLayoutProperties :: Newtype TextLayoutProperties _


--------------------------------------------------------------------------------
_TextLayoutProperties :: Iso' TextLayoutProperties { dx :: Maybe (Prop Number), dy :: Maybe (Prop Number), orientation :: Maybe (Prop Number), textRatio :: Maybe (Prop Number), wrapWidth :: Maybe (Prop Number), wrapChar :: Maybe (Prop String), wrapBefore :: Maybe (Prop Boolean), repeatWrapChar :: Maybe (Prop Boolean), rotateDisplacement :: Maybe (Prop Boolean), horizontalAlignment :: Maybe (Prop HorizontalAlignment), justifyAlignment :: Maybe (Prop JustifyAlignment), verticalAlignment :: Maybe (Prop VerticalAlignment), direction :: Maybe PlacementDirection}
_TextLayoutProperties = _Newtype

--------------------------------------------------------------------------------
newtype TextFormatProperties =
    TextFormatProperties {
      font :: Maybe Font
    , textSize :: Maybe (Prop Number)
    , characterSpacing :: Maybe (Prop Number)
    , lineSpacing :: Maybe (Prop Number)
    , textOpacity :: Maybe (Prop Number)
    , haloOpacity :: Maybe (Prop Number)
    , textTransform :: Maybe (Prop TextTransform)
    , fill :: Maybe (Prop Color)
    , haloFill :: Maybe (Prop Color)
    , haloRadius :: Maybe (Prop Number)
    , ffSettings :: Maybe (Prop FontFeatureSettings)
    }

derive instance genericTextFormatProperties :: Generic TextFormatProperties _

instance encodeJsonTextFormatProperties :: EncodeJson TextFormatProperties where encodeJson = genericEncodeJson

instance decodeJsonTextFormatProperties :: DecodeJson TextFormatProperties where decodeJson = genericDecodeJson

derive instance newtypeTextFormatProperties :: Newtype TextFormatProperties _


--------------------------------------------------------------------------------
_TextFormatProperties :: Iso' TextFormatProperties { font :: Maybe Font, textSize :: Maybe (Prop Number), characterSpacing :: Maybe (Prop Number), lineSpacing :: Maybe (Prop Number), textOpacity :: Maybe (Prop Number), haloOpacity :: Maybe (Prop Number), textTransform :: Maybe (Prop TextTransform), fill :: Maybe (Prop Color), haloFill :: Maybe (Prop Color), haloRadius :: Maybe (Prop Number), ffSettings :: Maybe (Prop FontFeatureSettings)}
_TextFormatProperties = _Newtype

--------------------------------------------------------------------------------
data Format =
    FormatExp Expression
  | FormatList (Array Format)
  | Format {
      font :: Maybe Font
    , textSize :: Maybe (Prop Number)
    , opacity :: Maybe (Prop Number)
    , characterSpacing :: Maybe (Prop Number)
    , lineSpacing :: Maybe (Prop Number)
    , wrapBefore :: Maybe (Prop Boolean)
    , repeatWrapChar :: Maybe (Prop Boolean)
    , textTransform :: Maybe (Prop TextTransform)
    , fill :: Maybe (Prop Color)
    , haloFill :: Maybe (Prop Color)
    , haloRadius :: Maybe (Prop Number)
    , ffSettings :: Maybe (Prop FontFeatureSettings)
    , next :: Format
    }
  | FormatLayout {
      dx :: Maybe (Prop Number)
    , dy :: Maybe (Prop Number)
    , orientation :: Maybe (Prop Number)
    , textRatio :: Maybe (Prop Number)
    , wrapWidth :: Maybe (Prop Number)
    , wrapChar :: Maybe (Prop String)
    , wrapBefore :: Maybe (Prop Boolean)
    , repeatWrapChar :: Maybe (Prop Boolean)
    , rotateDisplacement :: Maybe (Prop Boolean)
    , horizontalAlignment :: Maybe (Prop HorizontalAlignment)
    , justifyAlignment :: Maybe (Prop JustifyAlignment)
    , verticalAlignment :: Maybe (Prop VerticalAlignment)
    , next :: Format
    }
  | NullFormat

derive instance genericFormat :: Generic Format _

instance encodeJsonFormat :: EncodeJson Format where encodeJson = genericEncodeJson

instance decodeJsonFormat :: DecodeJson Format where decodeJson = genericDecodeJson


--------------------------------------------------------------------------------
_FormatExp :: Prism' Format Expression
_FormatExp = prism' FormatExp f
  where
    f (FormatExp a) = Just $ a
    f _ = Nothing

_FormatList :: Prism' Format (Array Format)
_FormatList = prism' FormatList f
  where
    f (FormatList a) = Just $ a
    f _ = Nothing

_Format :: Prism' Format { font :: Maybe Font, textSize :: Maybe (Prop Number), opacity :: Maybe (Prop Number), characterSpacing :: Maybe (Prop Number), lineSpacing :: Maybe (Prop Number), wrapBefore :: Maybe (Prop Boolean), repeatWrapChar :: Maybe (Prop Boolean), textTransform :: Maybe (Prop TextTransform), fill :: Maybe (Prop Color), haloFill :: Maybe (Prop Color), haloRadius :: Maybe (Prop Number), ffSettings :: Maybe (Prop FontFeatureSettings), next :: Format }
_Format = prism' Format f
  where
    f (Format r) = Just r
    f _ = Nothing

_FormatLayout :: Prism' Format { dx :: Maybe (Prop Number), dy :: Maybe (Prop Number), orientation :: Maybe (Prop Number), textRatio :: Maybe (Prop Number), wrapWidth :: Maybe (Prop Number), wrapChar :: Maybe (Prop String), wrapBefore :: Maybe (Prop Boolean), repeatWrapChar :: Maybe (Prop Boolean), rotateDisplacement :: Maybe (Prop Boolean), horizontalAlignment :: Maybe (Prop HorizontalAlignment), justifyAlignment :: Maybe (Prop JustifyAlignment), verticalAlignment :: Maybe (Prop VerticalAlignment), next :: Format }
_FormatLayout = prism' FormatLayout f
  where
    f (FormatLayout r) = Just r
    f _ = Nothing

_NullFormat :: Prism' Format Unit
_NullFormat = prism' (\_ -> NullFormat) f
  where
    f NullFormat = Just unit
    f _ = Nothing

--------------------------------------------------------------------------------
newtype TextPlacements =
    Dummy TextSymProperties

derive instance genericTextPlacements :: Generic TextPlacements _

instance encodeJsonTextPlacements :: EncodeJson TextPlacements where encodeJson = genericEncodeJson

instance decodeJsonTextPlacements :: DecodeJson TextPlacements where decodeJson = genericDecodeJson

derive instance newtypeTextPlacements :: Newtype TextPlacements _


--------------------------------------------------------------------------------
_Dummy :: Iso' TextPlacements TextSymProperties
_Dummy = _Newtype
--------------------------------------------------------------------------------
data Font =
    FontSetName String
  | FaceName String

derive instance genericFont :: Generic Font _

instance encodeJsonFont :: EncodeJson Font where encodeJson = genericEncodeJson

instance decodeJsonFont :: DecodeJson Font where decodeJson = genericDecodeJson


--------------------------------------------------------------------------------
_FontSetName :: Prism' Font String
_FontSetName = prism' FontSetName f
  where
    f (FontSetName a) = Just $ a
    f _ = Nothing

_FaceName :: Prism' Font String
_FaceName = prism' FaceName f
  where
    f (FaceName a) = Just $ a
    f _ = Nothing

--------------------------------------------------------------------------------