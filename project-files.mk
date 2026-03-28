CABAL_VIA ?= dhall2cabal

include project-bootstrap.mk
include project-versions.mk
include updo/Makefile

.PHONY: all
all: projects

# To make stack.yaml or cabal.project and no other, mark the file we copy from
# as intermediate. This is all we want when not doing a GHC upgrade.
#
# Comment out these .INTERMEDIATE targets to allow these files to be kept.
# .INTERMEDIATE: ghc-$(GHC_VERSION).$(CABAL_VIA).project
# .INTERMEDIATE: ghc-$(GHC_UPGRADE).$(CABAL_VIA).project
# .INTERMEDIATE: ghc-$(GHC_VERSION).$(STACK_VIA).yaml
# .INTERMEDIATE: ghc-$(GHC_UPGRADE).$(STACK_VIA).yaml

.DEFAULT_GOAL := all
