{ name = "language-common"
, dependencies = [ "console", "effect", "maybe", "newtype", "prelude" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
