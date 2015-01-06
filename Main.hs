module Main where

import Graphics.Declarative.Bordered as Bordered hiding (map)

import Graphics.Declarative.Cairo.Form as Form
import Graphics.Declarative.Cairo.Shape as Shape
import Graphics.Declarative.Cairo.TangoColors as Colors
import Graphics.Declarative.Cairo.Debug as CairoDebug

import Graphics.Declarative.Gtk.Window as Window
import Graphics.Declarative.Gtk.Debug as GtkDebug

import Data.Vec2 as Vec2

main :: IO ()
main = debugTangentProgram $ 
  debugTangentHull (Vec2.degrees 3) $
  --debugTangents (Vec2.degrees 30) $
  noDebug $
    form

debugTangents :: DebuggedForm -> DebuggedForm
debugTangents = foldr1 (.) . map debugTangent . vectorsInCircle

form :: Form
form = move (200,100) $ outlined (solid blue) $ rectangle 40 40
