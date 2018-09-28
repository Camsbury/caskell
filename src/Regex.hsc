{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CPP #-}

module Regex where

import Prelude
import Foreign
import Foreign.C.Types

#include <pcre.h>

-- newtype PCREOption
--   = PCREOption
--   { unPCREOption :: CInt
--   } deriving stock (Eq, Show)

#{enum PCREOption, PCREOption
 , caseless       = PCRE_CASELESS
 , dollar_endonly = PCRE_DOLLAR_ENDONLY
 , dotall         = PCRE_DOTALL
 }

-- caseless :: PCREOption
-- caseless = PCREOption #const PCRE_CASELESS

-- dollar_endonly :: PCREOption
-- dollar_endonly = PCREOption #const PCRE_DOLLAR_ENDONLY

-- dotall :: PCREOption
-- dotall = PCREOption #const PCRE_DOTALL
