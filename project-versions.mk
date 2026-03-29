# Versions of GHC and stackage resolver, the ones we're on and the next ones
# we're upgrading to.

# LiquidHaskell is only available for some versions of GHC. The
# liquidhaskell-boot versions published to Hackage are:
# 0.9.2.5.0, 0.9.2.8.0, 0.9.4.7.0, 0.9.6.3, 0.9.8.1, 0.9.8.2, 0.9.10.1, 0.9.10.1.2, 0.9.12.2, 0.9.12.2.1
#
# Each liquidhaskell-boot 0.x.y.z.patch version corresponds to a ghc-x.y.z
# version so we have these versions of GHC that we could have projects for:
# - ghc-9.2.5
# - ghc-9.2.8
# - ghc-9.4.7
# - ghc-9.6.3
# - ghc-9.8.1
# - ghc-9.8.2 -- no stackage LTS resolver exists
# - ghc-9.10.1
# - ghc-9.12.2
# GHC_VERSION ?= 9.2.5
# STACKAGE_VERSION ?= lts-20.11
# GHC_VERSION ?= 9.4.7
# STACKAGE_VERSION ?= lts-21.21
# GHC_VERSION ?= 9.6.3
# STACKAGE_VERSION ?= lts-22.6
# GHC_VERSION ?= 9.8.2
# STACKAGE_VERSION ?= nightly-2024-10-11
# GHC_VERSION ?= 9.10.1
# STACKAGE_VERSION ?= nightly-2025-05-05
GHC_VERSION ?= 9.12.2
STACKAGE_VERSION ?= nightly-2025-12-30

# For the upgrade, pick a matching pair of ghc-version and stack resolver.
# GHC_UPGRADE ?= 9.4.8
# STACKAGE_UPGRADE ?= lts-21.25

# Imports can be relative to the project or relative to importing file.
# ImportRelative works with cabal-3.10 and is the default.
# ProjectRelative works with cabal-3.8.
CABAL_RELATIVITY ?= ImportRelative
