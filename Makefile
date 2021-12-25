CASK := cask
TESTS ?= $(wildcard tests/*.el)

.PHONY: run build test

run: build
	@echo cask run
	@cask exec emacs --script src/main.el

build:
	$(CASK) build

test: build
	@echo cask test
	@cask exec emacs -Q --batch -L . \
	  $(addprefix -l ,$(TESTS)) \
	  -f ert-run-tests-batch-and-exit
