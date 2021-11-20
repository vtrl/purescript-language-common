module PureScript.Common.Names where

import Prelude

import Data.Maybe (Maybe)
import Data.Newtype (class Newtype)

newtype Qualified a = Qualified
  { module ∷ Maybe ModuleName
  , name ∷ a
  }

derive instance Newtype (Qualified a) _
derive newtype instance (Eq a) ⇒ Eq (Qualified a)
derive newtype instance (Ord a) ⇒ Ord (Qualified a)

newtype ModuleName = ModuleName String

derive instance Newtype ModuleName _
derive newtype instance Eq ModuleName
derive newtype instance Ord ModuleName

newtype Ident = Ident String

derive instance Newtype Ident _
derive newtype instance Eq Ident
derive newtype instance Ord Ident

newtype OpName = OpName String

derive instance Newtype OpName _
derive newtype instance Eq OpName
derive newtype instance Ord OpName

newtype Proper = Proper String

derive instance Newtype Proper _
derive newtype instance Eq Proper
derive newtype instance Ord Proper
