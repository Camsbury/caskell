{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}

module Caskell where

import Prelude
-- import Foreign hiding (void)
import Foreign.C.Types

foreign import ccall "math.h sin"
  c_sin :: CDouble -> CDouble

fastSin :: Double -> Double
fastSin
  = realToFrac
  . c_sin
  . realToFrac

main :: IO ()
main = void $ traverse_ (print . fastSin) [0/10, 1/10 .. 10/10]
