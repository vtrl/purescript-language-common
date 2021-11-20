module PureScript.Common.Position where

type SourcePos =
  { line ∷ Int
  , column ∷ Int
  }

type SourceSpan =
  { name ∷ String
  , start ∷ SourcePos
  , end ∷ SourcePos
  }
