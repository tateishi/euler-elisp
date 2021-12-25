CASK := cask
TESTS ?= $(wildcard tests/*.el)

.PHONY: build test

build:
	$(CASK) build

test: build
	@echo cask test
	@cask exec emacs -Q --batch -L . \
	  $(addprefix -l ,$(TESTS)) \
	  -f ert-run-tests-batch-and-exit
