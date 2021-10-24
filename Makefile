MAKEFILE_PATH := $(firstword $(MAKEFILE_LIST))
MAKEFILE_FULL_PATH := $(abspath $(MAKEFILE_PATH))
MAKEFILE_DIR := $(dir $(MAKEFILE_FULL_PATH))

help: ## This help dialog.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

hello2: ## u wat m8
	@echo "hello world"
	@echo $(MAKEFILE_DIR)
