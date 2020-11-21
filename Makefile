TARGET := ./bin/thunderbird-unread

.PHONY: test
test: lint

.PHONY: lint
lint:
	shellcheck ${TARGET}
