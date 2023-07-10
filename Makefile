.PHONY: setup

HOOKS_DIR := hooks
GIT_HOOKS_DIR := .git/hooks

setup:
	@for hook in $(shell ls $(HOOKS_DIR)); do \
		echo "Creating symbolic link for $$hook..."; \
		ln -s -f ../../$(HOOKS_DIR)/$$hook $(GIT_HOOKS_DIR)/$$hook; \
	done
	@echo "Setup completed successfully."
