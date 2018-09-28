{-# LINE 1 "Regex.hsc" #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}

module Regex where

import Prelude
import Foreign
import Foreign.C.Types



-- newtype PCREOption
--   = PCREOption
--   { unPCREOption :: CInt
--   } deriving stock (Eq, Show)

caseless        :: PCREOption
caseless        = PCREOption 1
dollar_endonly  :: PCREOption
dollar_endonly  = PCREOption 32
dotall          :: PCREOption
dotall          = PCREOption 4

{-# LINE 22 "Regex.hsc" #-}

-- caseless :: PCREOption
-- caseless = PCREOption #const PCRE_CASELESS

-- dollar_endonly :: PCREOption
-- dollar_endonly = PCREOption #const PCRE_DOLLAR_ENDONLY

-- dotall :: PCREOption
-- dotall = PCREOption #const PCRE_DOTALL

combineOptions :: [PCREOption] -> PCREOption
combineOptions = PCREOption . foldr ((.|.) . unPCREOption) 0
