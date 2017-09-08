module ML.DMLC.XGBoost.Exception
    ( XGBoostException (..)
    , throw
    ) where

import Foundation
import Foundation.Foreign
import Foundation.Monad (throw)

import qualified Prelude

data XGBoostException = XGBError CInt String deriving Typeable

instance Exception XGBoostException

instance Prelude.Show XGBoostException where
    show (XGBError err message) = "XGBError: return " <> Prelude.show err <> "\n" <> (toList message)