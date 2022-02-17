.PHONY: help omz clean submodules
.DEFAULT_GOAL := help

omz:
	./bin/make_omz_prompts

clean:
	./bin/clean_omz_prompts

submodules:
	git submodule update --recursive --remote

help:
	@echo "help"
	@echo "    shows this message"
	@echo ""
	@echo "submodules"
	@echo "    Update git submodules. "
