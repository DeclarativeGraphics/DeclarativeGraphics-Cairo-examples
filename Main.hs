module Main where

import Graphics.Declarative.Cairo.Form as Form
import Graphics.Declarative.Cairo.Shape as Shape
import Graphics.Declarative.Cairo.TangoColors as Colors

import Graphics.Declarative.Gtk.Window as Window

main = showFormWindow (0.5, 0.5) $
  filled red $ circle 170
