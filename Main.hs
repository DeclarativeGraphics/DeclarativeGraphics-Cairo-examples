module Main where

import Graphics.Declarative.Bordered as Bordered

import Graphics.Declarative.Cairo.Form as Form
import Graphics.Declarative.Cairo.Shape as Shape
import Graphics.Declarative.Cairo.TangoColors as Colors
import Graphics.Declarative.Cairo.Debug as CairoDebug

import Graphics.Declarative.Gtk.Window as Window
import Graphics.Declarative.Gtk.Debug as GtkDebug

import Data.Vec2 as Vec2

main = debugTangentProgram $ padded 10 form
--main = showFormWindow (0.5, 0.5) $ debugTangent Vec2.right form

form = outlined (solid blue) $ rectangle 40 40
